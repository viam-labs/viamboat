import 'package:fimber_io/fimber_io.dart';
import 'package:flutter/material.dart';

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

  @visibleForTesting
  final List<ViamAppRobot> robots = List<ViamAppRobot>.empty(growable: true);
  @visibleForTesting
  List<ViamAppLocation> locations = [];
  @visibleForTesting
  List<ViamBoat> boats = [];
  @visibleForTesting
  String? token;
  @visibleForTesting
  String? cachedLocationId;
  @visibleForTesting
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
        getBoats(),
        getTokenOrNull(),
        getLocations(organizationId),
      ]);

      await getRobots();
      getLocationAndRobotIdFromStore();

      if (isLocationIdAndRobotIdCached() && isLocationIdAndRobotIdInLists()) {
        final ViamAppRobot robot = robots.firstWhere((robot) => robot.id == cachedRobotId);

        await connectToRobot(robot);
      } else {
        emit(LocationsPageState.loaded(locations: locations, robots: robots));
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

  @visibleForTesting
  Future<void> getLocations(String organizationId) async {
    locations = await _getLocationsUseCase(organizationId);
  }

  @visibleForTesting
  Future<void> getBoats() async {
    boats = await _getBoatsUseCase();
  }

  @visibleForTesting
  Future<void> getTokenOrNull() async {
    token = await _getTokenOrNullUseCase();
  }

  @visibleForTesting
  Future<void> getRobots() async {
    for (final location in locations) {
      robots.addAll(await _getRobotsUseCase(location.id));
    }
  }

  @visibleForTesting
  void getLocationAndRobotIdFromStore() {
    cachedLocationId = _getLocationIdUseCase();
    cachedRobotId = _getRobotIdUseCase();
  }

  Future<void> connectToRobot(ViamAppRobot robot) async {
    final ViamAppLocation location = locations.firstWhere((element) => element.id == robot.location);
    try {
      emit(const LocationsPageState.loading());

      final config = RobotAddressConfig(robot.name, robot.location);

      await _connectToRobotUseCase(
        disableWebRtc: false,
        port: 8080,
        secure: true,
        url: _getRobotAddressUseCase(config),
        secret: location.auth.secrets.first.secret,
        accessToken: token,
      );

      if (!boats.any((boat) => boat.id == robot.id)) {
        await _addNewBoatUseCase(id: robot.id);
      }

      await Future.wait([
        _setLocationIdUseCase(robot.location),
        _setRobotIdUseCase(robot.id),
      ]);

      emit(LocationsPageState.goToMainPage(robot));
    } catch (error, st) {
      Fimber.e(
        'Error during connectToRobot in LocationsPageCubit',
        ex: error,
        stacktrace: st,
      );

      emit(LocationsPageState.connectionError(robot, location.auth.secrets.first.secret));
      emit(LocationsPageState.loaded(locations: locations, robots: robots));
    }
  }

  @visibleForTesting
  bool isLocationIdAndRobotIdCached() => cachedLocationId != null && cachedRobotId != null;

  @visibleForTesting
  bool isLocationIdAndRobotIdInLists() =>
      robots.any((robot) => robot.id == cachedRobotId) && locations.any((location) => location.id == cachedLocationId);
}
