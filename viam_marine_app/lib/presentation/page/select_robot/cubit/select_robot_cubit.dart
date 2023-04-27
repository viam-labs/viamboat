import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_location_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_locations_use_case.dart';
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
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart';
import 'package:viam_marine/domain/viam/model/robot_address_config.dart';
import 'package:viam_marine/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_robot_address_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
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
  final GetRobotAddressUseCase _getRobotAddressUseCase;
  final SetRobotIdUseCase _setRobotIdUseCase;
  final SetLocationIdUseCase _setLocationIdUseCase;
  final GetRobotIdUseCase _getRobotIdUseCase;
  final GetLocationIdUseCase _getLocationIdUseCase;

  List<ViamAppOrganization> _organizations = [];
  String? _cachedOrganizationId;
  StreamSubscription<TokenExpiredEvent>? _tokenExpiredStreamSubscription;
  List<ViamAppRobot> _robots = [];
  List<ViamAppLocation> _locations = [];
  List<ViamBoat> _boats = [];
  String? _token;
  String? _cachedLocationId;
  String? _cachedRobotId;

  SelectRobotCubit(
    this._addNewBoatUseCase,
    this._connectToRobotUseCase,
    this._getBoatsUseCase,
    this._getLocationIdUseCase,
    this._getLocationsUseCase,
    this._getOrganizationIdUseCase,
    this._getOrganizationsListUseCase,
    this._getRobotAddressUseCase,
    this._getRobotIdUseCase,
    this._getRobotsUseCase,
    this._getTokenOrNullUseCase,
    this._setLocationIdUseCase,
    this._setOrganizationIdUseCase,
    this._setRobotIdUseCase,
    this._subscribeToTokenExpiredStreamUseCase,
  ) : super(const SelectRobotState.idle());

  Future<void> init() async {
    emit(const SelectRobotState.organizationsLoading());

    await _listenToTokenExpiredStream();
    _token = await _getTokenOrNullUseCase();
    await _connectToAppViam();

    _organizations = await _getOrganizationsListUseCase();
    _cachedOrganizationId = _getOrganizationIdUseCase();

    if (!_isOrganizationIdInCacheAndInList()) {
      emit(SelectRobotState.organizationsLoaded(organizations: _organizations));
    } else {
      emit(const SelectRobotState.locationsAndRobotsLoading());

      await _fetchLocationsAndRobots(_cachedOrganizationId!);

      if (isLocationIdAndRobotIdCached() && isLocationIdAndRobotIdInLists()) {
        final ViamAppRobot robot = _robots.firstWhere((robot) => robot.id == _cachedRobotId);
        await connectToRobot(robot);
      } else {
        emit(SelectRobotState.locationsAndRobotsLoaded(locations: _locations, robots: _robots));
      }
    }
  }

  Future<void> _connectToAppViam() async {
    await _connectToRobotUseCase(
      url: ViamConstants.appViamAddress,
      disableWebRtc: true,
      port: 443,
      secure: true,
      accessToken: _token,
    );
  }

  Future<void> _fetchLocationsAndRobots(String organizationId) async {
    await Future.wait([
      _getBoats(),
      _getLocations(organizationId),
    ]);
    await _getRobots();

    _getLocationAndRobotIdFromStore();
  }

  Future<void> selectOrganization(String organizationId) async {
    emit(const SelectRobotState.locationsAndRobotsLoading());

    await _fetchLocationsAndRobots(organizationId);
    await _setOrganizationIdUseCase(organizationId);

    emit(SelectRobotState.locationsAndRobotsLoaded(locations: _locations, robots: _robots));
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

  void _getLocationAndRobotIdFromStore() {
    _cachedLocationId = _getLocationIdUseCase();
    _cachedRobotId = _getRobotIdUseCase();
  }

  Future<void> connectToRobot(ViamAppRobot robot) async {
    final ViamAppLocation location = _locations.firstWhere((element) => element.id == robot.location);
    try {
      emit(const SelectRobotState.connectingToRobot());

      final config = RobotAddressConfig(robot.name, robot.location);

      await _connectToRobotUseCase(
        disableWebRtc: false,
        port: 8080,
        secure: true,
        url: _getRobotAddressUseCase(config),
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

      emit(SelectRobotState.goToMainPage(robot));
    } catch (error, st) {
      // Fimber.e(
      //   'Error during connectToRobot in LocationsPageCubit',
      //   ex: error,
      //   stacktrace: st,
      // );

      // emit(LocationsPageState.connectionError(robot, location.auth.secrets.first.secret));
      // emit(LocationsPageState.loaded(locations: locations, robots: robots));
    }
  }

  bool isLocationIdAndRobotIdCached() => _cachedLocationId != null && _cachedRobotId != null;

  bool isLocationIdAndRobotIdInLists() =>
      _robots.any((robot) => robot.id == _cachedRobotId) &&
      _locations.any((location) => location.id == _cachedLocationId);

  Future<void> _listenToTokenExpiredStream() async {
    await _tokenExpiredStreamSubscription?.cancel();
    _tokenExpiredStreamSubscription = _subscribeToTokenExpiredStreamUseCase().listen((event) async {
      if (event == TokenExpiredEvent.expired) {
        // emit(const OrganizationsState.loading());
        // await _clearCacheUseCase();
        // emit(const OrganizationsState.logout());
      }
    });
  }

  bool _isOrganizationIdInCacheAndInList() =>
      _cachedOrganizationId != null && _organizations.any((organization) => organization.id == _cachedOrganizationId);
}
