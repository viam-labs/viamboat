import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/usecase/connect_app_service_client_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_location_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_locations_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_main_part_address_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_organization_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_robot_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_robots_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/list_organizations_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/set_location_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/set_organization_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/set_robot_id_use_case.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/domain/boat/usecase/add_new_boat_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/domain/clear_cache/use_case/clear_cache_use_case.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/logout_use_case.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_state.dart';
import 'package:viam_marine/utils/viam_constants.dart';

@injectable
class SelectRobotCubit extends Cubit<SelectRobotState> {
  final GetOrganizationsListUseCase _getOrganizationsListUseCase;
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final GetOrganizationIdUseCase _getOrganizationIdUseCase;
  final SetOrganizationIdUseCase _setOrganizationIdUseCase;
  final SubscribeToTokenExpiredStreamUseCase _subscribeToTokenExpiredStreamUseCase;
  final GetLocationsUseCase _getLocationsUseCase;
  final GetRobotsUseCase _getRobotsUseCase;
  final AddNewBoatUseCase _addNewBoatUseCase;
  final GetBoatsUseCase _getBoatsUseCase;
  final GetMainPartAddressUseCase _getMainPartAddressUseCase;
  final SetRobotIdUseCase _setRobotIdUseCase;
  final SetLocationIdUseCase _setLocationIdUseCase;
  final GetRobotIdUseCase _getRobotIdUseCase;
  final GetLocationIdUseCase _getLocationIdUseCase;
  final ClearCacheUseCase _clearCacheUseCase;
  final LogoutUseCase _logoutUseCase;
  final ConnectAppServiceClinetUseCase _connectAppServiceClinetUseCase;

  List<ViamAppOrganization> _organizations = [];
  List<ViamAppRobot> _robots = [];
  List<ViamAppLocation> _locations = [];
  List<ViamBoat> _boats = [];
  String? _token;
  String? _cachedLocationId;
  String? _cachedRobotId;
  String? _cachedOrganizationId;
  StreamSubscription<TokenExpiredEvent>? _tokenExpiredStreamSubscription;
  String _organizationName = '';
  bool _isAutoConnectOn = false;

  SelectRobotCubit(
    this._addNewBoatUseCase,
    this._connectToRobotUseCase,
    this._getBoatsUseCase,
    this._getLocationIdUseCase,
    this._getLocationsUseCase,
    this._getOrganizationIdUseCase,
    this._getOrganizationsListUseCase,
    this._getMainPartAddressUseCase,
    this._getRobotIdUseCase,
    this._getRobotsUseCase,
    this._getTokenOrNullUseCase,
    this._setLocationIdUseCase,
    this._setOrganizationIdUseCase,
    this._setRobotIdUseCase,
    this._subscribeToTokenExpiredStreamUseCase,
    this._clearCacheUseCase,
    this._logoutUseCase,
    this._connectAppServiceClinetUseCase,
  ) : super(const SelectRobotState.idle());

  Future<void> init(final bool isAutoConnectOn) async {
    try {
      emit(const SelectRobotState.organizationsLoading());
      _isAutoConnectOn = isAutoConnectOn;

      await _fetchOrganizations();

      if (!_isOrganizationIdInCacheAndInList() || !isAutoConnectOn) {
        emit(SelectRobotState.organizationsLoaded(organizations: _organizations));
      } else {
        _getOrganizationName(_cachedOrganizationId!);
        await fetchLocationsAndRobots(_cachedOrganizationId!);
      }
    } catch (error, st) {
      Fimber.e(
        'Error during init SelectRobotCubit',
        ex: error,
        stacktrace: st,
      );

      emit(const SelectRobotState.organizationsError());
    }
  }

  Future<void> connectToRobot(ViamAppRobot robot) async {
    final ViamAppLocation location = _locations.firstWhere((element) => element.id == robot.location);
    try {
      emit(const SelectRobotState.connectingToRobot());

      final String mainPartAddress = await _getMainPartAddressUseCase(robot.id);

      await _connectToRobotUseCase(
        disableWebRtc: false,
        port: 8080,
        secure: true,
        url: mainPartAddress,
        secret: location.auth.secrets.first.secret,
        accessToken: _token,
      );

      if (!_boats.any((boat) => boat.id == robot.id)) {
        await _addNewBoatUseCase(id: robot.id);
      }

      await Future.wait([
        _setLocationIdUseCase(robot.location),
        _setRobotIdUseCase(robot.id),
      ]);

      final config = RobotConfig(
        address: mainPartAddress,
        id: robot.id,
        location: location.id,
        name: robot.name,
        secret: location.auth.secrets.first.secret,
      );

      emit(SelectRobotState.goToMainPage(config));
    } catch (error, st) {
      Fimber.e(
        'Error during connectToRobot in SelectRobotCubit',
        ex: error,
        stacktrace: st,
      );

      String? message;
      if (error is GrpcError) {
        message = error.message;
      }

      emit(SelectRobotState.connectionError(
        robot,
        location.auth.secrets.first.secret,
        message,
      ));

      emit(SelectRobotState.locationsAndRobotsLoaded(
        locations: _locations,
        robots: _robots,
        organizationName: _organizationName,
        boats: _boats,
      ));
    }
  }

  Future<void> logout() async {
    try {
      await _logoutUseCase(
        authDomain: ViamConstants.authDomain,
        clientId: ViamConstants.clientId,
        scheme: ViamConstants.scheme,
      );
      await _clearCacheUseCase();
      emit(const SelectRobotState.logout());
    } catch (error, st) {
      Fimber.e(
        'Error during logout',
        ex: error,
        stacktrace: st,
      );

      emit(const SelectRobotState.logoutError());
      emit(SelectRobotState.organizationsLoaded(organizations: _organizations));
    }
  }

  Future<void> selectOrganization(String organizationId) async {
    try {
      emit(const SelectRobotState.locationsAndRobotsLoading());

      _locations = [];
      _robots = [];
      _getOrganizationName(organizationId);

      await fetchLocationsAndRobots(organizationId);
      await _setOrganizationIdUseCase(organizationId);
    } catch (error, st) {
      Fimber.e(
        'Error during select organization',
        ex: error,
        stacktrace: st,
      );

      emit(SelectRobotState.locationsAndRobotsError(organizationId));
    }
  }

  Future<void> fetchLocationsAndRobots(String organizationId) async {
    emit(const SelectRobotState.locationsAndRobotsLoading());

    await Future.wait([
      _getBoats(),
      _getLocations(organizationId),
    ]);
    await _getRobots();
    _getLocationAndRobotIdFromStore();

    if (_isLocationIdAndRobotIdCached() && _isLocationIdAndRobotIdInLists() && _isAutoConnectOn) {
      final ViamAppRobot robot = _robots.firstWhere(
        (robot) => robot.id == _cachedRobotId,
      );
      await connectToRobot(robot);
    } else {
      emit(SelectRobotState.locationsAndRobotsLoaded(
        locations: _locations,
        robots: _robots,
        organizationName: _organizationName,
        boats: _boats,
      ));
    }
  }

  void goToOrganizations() => emit(SelectRobotState.organizationsLoaded(organizations: _organizations));

  Future<void> _fetchOrganizations() async {
    await _listenToTokenExpiredStream();
    _token = await _getTokenOrNullUseCase();
    await _connectAppServiceClinetUseCase(_token!);

    _organizations = await _getOrganizationsListUseCase();
    _cachedOrganizationId = _getOrganizationIdUseCase();
  }

  Future<void> _getLocations(String organizationId) async {
    _locations = await _getLocationsUseCase(organizationId);
  }

  Future<void> _getBoats() async {
    _boats = await _getBoatsUseCase();
  }

  Future<void> _getRobots() async {
    for (final location in _locations) {
      _robots.addAll(await _getRobotsUseCase(location.id));
    }
  }

  void _getOrganizationName(String organizationId) {
    _organizationName = _organizations.firstWhere((organization) => organization.id == organizationId).name;
  }

  void _getLocationAndRobotIdFromStore() {
    _cachedLocationId = _getLocationIdUseCase();
    _cachedRobotId = _getRobotIdUseCase();
  }

  Future<void> _listenToTokenExpiredStream() async {
    await _tokenExpiredStreamSubscription?.cancel();
    _tokenExpiredStreamSubscription = _subscribeToTokenExpiredStreamUseCase().listen((event) async {
      if (event == TokenExpiredEvent.expired) {
        emit(const SelectRobotState.loading());
        await _clearCacheUseCase();
        emit(const SelectRobotState.logout());
      }
    });
  }

  bool _isLocationIdAndRobotIdCached() => _cachedLocationId != null && _cachedRobotId != null;

  bool _isLocationIdAndRobotIdInLists() =>
      _robots.any((robot) => robot.id == _cachedRobotId) &&
      _locations.any((location) => location.id == _cachedLocationId);

  bool _isOrganizationIdInCacheAndInList() =>
      _cachedOrganizationId != null && _organizations.any((organization) => organization.id == _cachedOrganizationId);
}
