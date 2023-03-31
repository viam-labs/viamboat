import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location_auth.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location_organization.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_shared_secret.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_locations_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_robot_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_location_id_use_case.dart';
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
import 'package:viam_marine/presentation/page/locations/cubit/locations_page_cubit.dart';
import 'package:viam_marine/presentation/page/locations/cubit/locations_page_state.dart';

import 'locations_page_cubit_test.mocks.dart';

@GenerateMocks([
  GetLocationsUseCase,
  GetRobotsUseCase,
  ConnectToRobotUseCase,
  GetTokenOrNullUseCase,
  AddNewBoatUseCase,
  GetBoatsUseCase,
  SetRobotIdUseCase,
  GetRobotIdUseCase,
  GetLocationIdUseCase,
  SetLocationIdUseCase,
  GetRobotAddressUseCase,
])
void main() {
  late GetLocationsUseCase getLocationsUseCase;
  late GetRobotsUseCase getRobotsUseCase;
  late ConnectToRobotUseCase connectToRobotUseCase;
  late GetTokenOrNullUseCase getTokenOrNullUseCase;
  late AddNewBoatUseCase addNewBoatUseCase;
  late GetBoatsUseCase getBoatsUseCase;
  late GetRobotAddressUseCase getRobotAddressUseCase;
  late SetRobotIdUseCase setRobotIdUseCase;
  late SetLocationIdUseCase setLocationIdUseCase;
  late GetRobotIdUseCase getRobotIdUseCase;
  late GetLocationIdUseCase getLocationIdUseCase;
  late LocationsPageCubit locationsPageCubit;

  setUp(() {
    getLocationsUseCase = MockGetLocationsUseCase();
    getLocationIdUseCase = MockGetLocationIdUseCase();
    getRobotIdUseCase = MockGetRobotIdUseCase();
    getRobotsUseCase = MockGetRobotsUseCase();
    connectToRobotUseCase = MockConnectToRobotUseCase();
    getTokenOrNullUseCase = MockGetTokenOrNullUseCase();
    addNewBoatUseCase = MockAddNewBoatUseCase();
    getBoatsUseCase = MockGetBoatsUseCase();
    getRobotAddressUseCase = MockGetRobotAddressUseCase();
    setLocationIdUseCase = MockSetLocationIdUseCase();
    setRobotIdUseCase = MockSetRobotIdUseCase();

    locationsPageCubit = LocationsPageCubit(
      getLocationsUseCase,
      addNewBoatUseCase,
      connectToRobotUseCase,
      getRobotAddressUseCase,
      getBoatsUseCase,
      getRobotsUseCase,
      getTokenOrNullUseCase,
      setLocationIdUseCase,
      getRobotIdUseCase,
      getLocationIdUseCase,
      setRobotIdUseCase,
    );
  });

  group('LocationsPageCubit', () {
    const organizationId = 'organizationId';
    const locationId = 'locationId';
    const robotId = 'robotId';
    const token = 'token';
    const robotName = 'name';
    const locationOrganizations = [
      ViamAppLocationOrganization(
        organizationId,
        true,
      ),
    ];
    const boats = [
      ViamBoat(id: 'id'),
    ];
    const error = 'error';
    const robotConfig = RobotAddressConfig(robotName, locationId);
    const url = 'url';
    final date = DateTime.now();
    final sharedSecret = ViamAppSharedSecret(
      ViamAppSharedSecretState.enabled,
      'id',
      'secret',
      date,
    );
    final locationAuth = ViamAppLocationAuth(locationId, [sharedSecret]);
    final locations = [
      ViamAppLocation(
        id: locationId,
        name: 'name',
        parentLocationId: 'parentLocationId',
        auth: locationAuth,
        organizations: locationOrganizations,
        createdOn: date,
        robotCount: 1,
      ),
    ];
    final robot = ViamAppRobot(
      id: robotId,
      createdOn: date,
      lastAccess: date,
      location: locationId,
      name: robotName,
    );
    final robots = [robot];

    test(
      'has initial idle state',
      () => expect(
        locationsPageCubit.state,
        equals(const LocationsPageState.idle()),
      ),
    );

    blocTest(
      'emits loaded state on init when successfull',
      build: () => locationsPageCubit,
      act: (LocationsPageCubit cubit) => cubit.init(organizationId),
      setUp: () {
        when(getBoatsUseCase()).thenAnswer((_) async => boats);
        when(getTokenOrNullUseCase()).thenAnswer((_) async => token);
        when(getLocationsUseCase(organizationId)).thenAnswer((_) async => locations);
        when(getRobotsUseCase(locationId)).thenAnswer((_) async => robots);
        when(getLocationIdUseCase()).thenReturn(null);
        when(getRobotIdUseCase()).thenReturn(null);
      },
      expect: () => [
        const LocationsPageState.loading(),
        LocationsPageState.loaded(robots: robots, locations: locations),
      ],
    );

    blocTest(
      'emits error state on init when fialure',
      build: () => locationsPageCubit,
      act: (LocationsPageCubit cubit) => cubit.init(organizationId),
      setUp: () {
        when(getBoatsUseCase()).thenAnswer((_) async => Future.error(error));
      },
      expect: () => [
        const LocationsPageState.loading(),
        const LocationsPageState.error(),
      ],
    );

    blocTest(
      'emits goToMainPage state on init when ids are in cache',
      build: () => locationsPageCubit,
      act: (LocationsPageCubit cubit) => cubit.init(organizationId),
      setUp: () {
        when(getBoatsUseCase()).thenAnswer((_) async => boats);
        when(getTokenOrNullUseCase()).thenAnswer((_) async => token);
        when(getLocationsUseCase(organizationId)).thenAnswer((_) async => locations);
        when(getRobotsUseCase(locationId)).thenAnswer((_) async => robots);
        when(getLocationIdUseCase()).thenReturn(locationId);
        when(getRobotIdUseCase()).thenReturn(robotId);
        when(getRobotAddressUseCase(robotConfig)).thenReturn(url);
        when(connectToRobotUseCase(
          disableWebRtc: false,
          port: 8080,
          secure: true,
          url: url,
          secret: sharedSecret.secret,
          accessToken: token,
        )).thenAnswer((_) => Future.value());
        when(addNewBoatUseCase(id: robotId)).thenAnswer((_) => Future.value());
        when(setLocationIdUseCase(locationId)).thenAnswer((_) => Future.value());
        when(setRobotIdUseCase(robotId)).thenAnswer((_) => Future.value());
      },
      verify: (_) {
        verify(addNewBoatUseCase(id: robotId));
        verify(setLocationIdUseCase(locationId));
        verify(setRobotIdUseCase(robotId));
      },
      expect: () => [
        const LocationsPageState.loading(),
        LocationsPageState.goToMainPage(robot),
      ],
    );
    blocTest(
      'emits connectionError state when fails to connect to boat',
      build: () => locationsPageCubit,
      act: (LocationsPageCubit cubit) => cubit.init(organizationId),
      setUp: () {
        when(getBoatsUseCase()).thenAnswer((_) async => boats);
        when(getTokenOrNullUseCase()).thenAnswer((_) async => token);
        when(getLocationsUseCase(organizationId)).thenAnswer((_) async => locations);
        when(getRobotsUseCase(locationId)).thenAnswer((_) async => robots);
        when(getLocationIdUseCase()).thenReturn(locationId);
        when(getRobotIdUseCase()).thenReturn(robotId);
        when(getRobotAddressUseCase(robotConfig)).thenReturn(url);
        when(connectToRobotUseCase(
          disableWebRtc: false,
          port: 8080,
          secure: true,
          url: url,
          secret: sharedSecret.secret,
          accessToken: token,
        )).thenAnswer((_) => Future.error(error));
        when(addNewBoatUseCase(id: robotId)).thenAnswer((_) => Future.value());
        when(setLocationIdUseCase(locationId)).thenAnswer((_) => Future.value());
        when(setRobotIdUseCase(robotId)).thenAnswer((_) => Future.value());
      },
      verify: (_) {
        verifyNever(addNewBoatUseCase(id: robotId));
        verifyNever(setLocationIdUseCase(locationId));
        verifyNever(setRobotIdUseCase(robotId));
      },
      expect: () => [
        const LocationsPageState.loading(),
        LocationsPageState.connectionError(robot, sharedSecret.secret),
        LocationsPageState.loaded(robots: robots, locations: locations),
      ],
    );

    test('getLocations() gets ViamAppLocation list successfully', () async {
      when(getLocationsUseCase(organizationId)).thenAnswer((_) async => locations);
      await locationsPageCubit.getLocations(organizationId);

      expect(locationsPageCubit.locations, equals(locations));
    });

    test('getLocations() throws error when failure', () async {
      when(getLocationsUseCase(organizationId)).thenAnswer((_) => Future.error(error));

      await expectLater(locationsPageCubit.getLocations(organizationId), throwsA(error));
    });

    test('getRobots() gets ViamAppRobot list for given locationId successfully', () async {
      when(getLocationsUseCase(organizationId)).thenAnswer((_) async => locations);
      when(getRobotsUseCase(locationId)).thenAnswer((_) async => robots);

      await locationsPageCubit.getLocations(organizationId);
      await locationsPageCubit.getRobots();

      expect(locationsPageCubit.robots, equals(robots));
      verify(getRobotsUseCase(locationId)).called(locations.length);
    });

    test('getRobots() throws error when failure', () async {
      when(getLocationsUseCase(organizationId)).thenAnswer((_) async => locations);
      when(getRobotsUseCase(locationId)).thenAnswer((_) => Future.error(error));

      await locationsPageCubit.getLocations(organizationId);

      await expectLater(locationsPageCubit.getRobots(), throwsA(error));
    });

    test('getBoats() gets ViamAppBoat list successfully', () async {
      when(getBoatsUseCase()).thenAnswer((_) async => boats);

      await locationsPageCubit.getBoats();
      expect(locationsPageCubit.boats, equals(boats));
    });

    test('getBoats() throws error when failure', () async {
      when(getBoatsUseCase()).thenAnswer((_) => Future.error(error));

      await expectLater(locationsPageCubit.getBoats(), throwsA(error));
    });

    test('getLocationAndRobotIdFromStore() gets location and robot id from store successfully', () {
      when(getLocationIdUseCase()).thenReturn(locationId);
      when(getRobotIdUseCase()).thenReturn(robotId);

      locationsPageCubit.getLocationAndRobotIdFromStore();
      expect(locationsPageCubit.cachedLocationId, equals(locationId));
      expect(locationsPageCubit.cachedRobotId, equals(robotId));
    });

    test('getLocationAndRobotIdFromStore() gets null from store when no robot and location id', () {
      when(getLocationIdUseCase()).thenReturn(null);
      when(getRobotIdUseCase()).thenReturn(null);

      locationsPageCubit.getLocationAndRobotIdFromStore();
      expect(locationsPageCubit.cachedLocationId, equals(null));
      expect(locationsPageCubit.cachedRobotId, equals(null));
    });

    test('getTokenOrNull() gets token from store successfully', () async {
      when(getTokenOrNullUseCase()).thenAnswer((_) async => token);
      await locationsPageCubit.getTokenOrNull();

      expect(locationsPageCubit.token, equals(token));
    });

    test('getTokenOrNull() gets null from store when no token', () async {
      when(getTokenOrNullUseCase()).thenAnswer((_) async => null);
      await locationsPageCubit.getTokenOrNull();

      expect(locationsPageCubit.token, equals(null));
    });

    test('isLocationIdAndRobotIdCached() returns true when cachedRobotId and cachedLocationId is not null', () {
      when(getLocationIdUseCase()).thenReturn(locationId);
      when(getRobotIdUseCase()).thenReturn(robotId);

      locationsPageCubit.getLocationAndRobotIdFromStore();

      final result = locationsPageCubit.isLocationIdAndRobotIdCached();

      expect(result, equals(true));
    });

    test('isLocationIdAndRobotIdCached() returns false when cachedRobotId and locationId is null', () {
      when(getLocationIdUseCase()).thenReturn(null);
      when(getRobotIdUseCase()).thenReturn(null);

      locationsPageCubit.getLocationAndRobotIdFromStore();

      final result = locationsPageCubit.isLocationIdAndRobotIdCached();

      expect(result, equals(false));
    });

    test('isLocationIdAndRobotIdCached() returns false when cachedRobotId is null', () {
      when(getLocationIdUseCase()).thenReturn(null);
      when(getRobotIdUseCase()).thenReturn(robotId);

      locationsPageCubit.getLocationAndRobotIdFromStore();

      final result = locationsPageCubit.isLocationIdAndRobotIdCached();

      expect(result, equals(false));
    });

    test('isLocationIdAndRobotIdCached() returns false when robotId is null', () {
      when(getLocationIdUseCase()).thenReturn(locationId);
      when(getRobotIdUseCase()).thenReturn(null);

      locationsPageCubit.getLocationAndRobotIdFromStore();

      final result = locationsPageCubit.isLocationIdAndRobotIdCached();

      expect(result, equals(false));
    });

    test('isLocationIdAndRobotIdInLists() returns true if cached ids are present in robot and location list', () async {
      when(getLocationsUseCase(organizationId)).thenAnswer((_) async => locations);
      when(getRobotsUseCase(locationId)).thenAnswer((_) async => robots);
      when(getLocationIdUseCase()).thenReturn(locationId);
      when(getRobotIdUseCase()).thenReturn(robotId);

      await locationsPageCubit.getLocations(organizationId);
      await locationsPageCubit.getRobots();
      locationsPageCubit.getLocationAndRobotIdFromStore();

      final result = locationsPageCubit.isLocationIdAndRobotIdInLists();

      expect(result, equals(true));
    });

    test('isLocationIdAndRobotIdInLists() returns false if one of cached ids is not present in robot and location list',
        () async {
      when(getLocationsUseCase(organizationId)).thenAnswer((_) async => locations);
      when(getRobotsUseCase(locationId)).thenAnswer((_) async => robots);
      when(getLocationIdUseCase()).thenReturn(null);
      when(getRobotIdUseCase()).thenReturn(robotId);

      await locationsPageCubit.getLocations(organizationId);
      await locationsPageCubit.getRobots();
      locationsPageCubit.getLocationAndRobotIdFromStore();

      final result = locationsPageCubit.isLocationIdAndRobotIdInLists();

      expect(result, equals(false));
    });
  });
}
