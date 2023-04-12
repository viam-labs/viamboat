import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/clear_cache/use_case/clear_cache_use_case.dart';
import 'package:viam_marine/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/resource/usecase/get_resource_names_use_case.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class MainCubit extends ViamCubit<MainState> {
  final GetResourceNamesUseCase _getResourceNamesUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final SubscribeToTokenExpiredStreamUseCase _subscribeToTokenExpiredStreamUseCase;
  StreamSubscription<TokenExpiredEvent>? _tokenExpiredStreamSubscription;
  final ClearCacheUseCase _clearCacheUseCase;

  MainCubit(
    this._getResourceNamesUseCase,
    this._getTokenOrNullUseCase,
    this._subscribeToTokenExpiredStreamUseCase,
    this._clearCacheUseCase,
  ) : super(const MainState.idle());

  Future<void> init() async {
    try {
      emit(const MainState.loading());
      await _listenToTokenExpiredStream();
      final resources = await _getResourceNamesUseCase(null, null);

      final List<ViamAppResourceName> graphicalSensors = [];
      final List<ViamAppResourceName> movementSensors = [];
      final List<ViamAppResourceName> cameraSensors = [];
      final List<ViamAppResourceName> sensors = [];

      for (final resource in resources) {
        if (resource.subtype == ViamAppResourceSubtypeFilter.sensor.name &&
            resource.name.contains(ViamAppResourceNameFilter.fluid.name)) {
          graphicalSensors.add(resource);
        } else if (resource.subtype == ViamAppResourceSubtypeFilter.movement.value) {
          movementSensors.add(resource);
          /*Since each sensor is built from one resourceName, and since we only have one movement resource from which wee need to get 2 diffrent readings from 2 diffrent endpoints, wee need to duplicate resourceName for movement and distinguish them later, so I added suffixes to names and I'm removing them later before making a call.
          */
          sensors.add(resource.copyWith(name: '${resource.name}heading'));
          sensors.add(resource.copyWith(name: '${resource.name}linearVelocity'));
        } else if (resource.subtype == ViamAppResourceSubtypeFilter.camera.name) {
          cameraSensors.add(resource);
        } else if (resource.subtype == ViamAppResourceSubtypeFilter.sensor.name &&
            resource.name.contains(ViamAppResourceNameFilter.depth.name)) {
          sensors.add(resource);
        } else {
          continue;
        }
      }

      sortSensorsByName(sensors);
      sortSensorsByName(graphicalSensors);
      sensors.addAll(graphicalSensors);

      emit(MainState.loaded(sensors, movementSensors, cameraSensors));
    } catch (error, st) {
      Fimber.e(
        'Error during initing main cubit',
        ex: error,
        stacktrace: st,
      );
      emit(const MainState.error());
    }
  }

  void sortSensorsByName(List<ViamAppResourceName> sensors) => sensors.sort(
        (sensorA, sensorB) => sensorA.name.compareTo(sensorB.name),
      );

  Future<void> refreshApp() async {
    final tokenOrNull = await _getTokenOrNullUseCase();
    if (tokenOrNull == null) return;
    emit(const MainState.goToOrganizationPage());
  }

  Future<void> _listenToTokenExpiredStream() async {
    await _tokenExpiredStreamSubscription?.cancel();
    _tokenExpiredStreamSubscription = _subscribeToTokenExpiredStreamUseCase().listen((event) async {
      if (event == TokenExpiredEvent.expired) {
        emit(const MainState.loading());
        await _clearCacheUseCase();
        emit(const MainState.logout());
      }
    });
  }

  @override
  Future<void> close() {
    _tokenExpiredStreamSubscription?.cancel();
    return super.close();
  }
}
