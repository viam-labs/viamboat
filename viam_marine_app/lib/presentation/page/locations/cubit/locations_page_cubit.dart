import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_location_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_locations_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_robot_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_robots_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/set_location_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/set_robot_id_use_case.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/domain/boat/usecase/add_new_boat_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/domain/viam/model/robot_address_config.dart';
import 'package:viam_marine/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_robot_address_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/locations/cubit/locations_page_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class LocationsPageCubit extends ViamCubit<LocationsPageState> {
  final GetLocationsUseCase _getLocationsUseCase;
  final GetRobotsUseCase _getRobotsUseCase;
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final AddNewBoatUseCase _addNewBoatUseCase;
  final GetBoatsUseCase _getBoatsUseCase;
  final GetRobotAddressUseCase _getRobotAddressUseCase;
  final SetRobotIdUseCase _setRobotIdUseCase;
  final SetLocationIdUseCase _setLocationIdUseCase;
  final GetRobotIdUseCase _getRobotIdUseCase;
  final GetLocationIdUseCase _getLocationIdUseCase;
  final List<ViamAppRobot> _robots = List<ViamAppRobot>.empty(growable: true);

  List<ViamAppLocation> _locations = [];
  List<ViamBoat> _boats = [];
  String? _token;
  String? cachedLocationId;
  String? cachedRobotId;

  LocationsPageCubit(
    this._getLocationsUseCase,
    this._addNewBoatUseCase,
    this._connectToRobotUseCase,
    this._getRobotAddressUseCase,
    this._getBoatsUseCase,
    this._getRobotsUseCase,
    this._getTokenOrNullUseCase,
    this._setLocationIdUseCase,
    this._getRobotIdUseCase,
    this._getLocationIdUseCase,
    this._setRobotIdUseCase,
  ) : super(const LocationsPageState.idle());

  Future<void> init(String organizationId) async {
    try {
      emit(const LocationsPageState.loading());

      await Future.wait([
        _getBoats(),
        _getTokenOrNull(),
        _getLocations(organizationId),
      ]);

      await _getRobots();
      _getLocationAndRobotIdFromStore();

      if (_isLocationIdAndRobotIdCached() && _isLocationIdAndRobotIdInLists()) {
        final ViamAppRobot robot = _robots.firstWhere((robot) => robot.id == cachedRobotId);

        await connectToRobot(robot);
      } else {
        emit(LocationsPageState.loaded(locations: _locations, robots: _robots));
      }
    } catch (error, st) {
      Fimber.e(
        'Error during init locations cubit',
        ex: error,
        stacktrace: st,
      );

      emit(const LocationsPageState.error());
    }
  }

  Future<void> _getLocations(String organizationId) async {
    _locations = await _getLocationsUseCase(organizationId);
  }

  Future<void> _getBoats() async {
    _boats = await _getBoatsUseCase();
  }

  Future<void> _getTokenOrNull() async {
    _token = await _getTokenOrNullUseCase();
  }

  Future<void> _getRobots() async {
    for (final location in _locations) {
      _robots.addAll(await _getRobotsUseCase(location.id));
    }
  }

  void _getLocationAndRobotIdFromStore() {
    cachedLocationId = _getLocationIdUseCase();
    cachedRobotId = _getRobotIdUseCase();
  }

  Future<void> connectToRobot(ViamAppRobot robot) async {
    final ViamAppLocation location = _locations.firstWhere((element) => element.id == robot.location);
    try {
      emit(const LocationsPageState.loading());

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

      emit(LocationsPageState.goToMainPage(robot));
    } catch (_) {
      emit(LocationsPageState.connectionError(robot, location.auth.secrets.first.secret));
      emit(LocationsPageState.loaded(locations: _locations, robots: _robots));
    }
  }

  bool _isLocationIdAndRobotIdCached() => cachedLocationId != null && cachedRobotId != null;

  bool _isLocationIdAndRobotIdInLists() =>
      _robots.any((robot) => robot.id == cachedRobotId) &&
      _locations.any((location) => location.id == cachedLocationId);
}
