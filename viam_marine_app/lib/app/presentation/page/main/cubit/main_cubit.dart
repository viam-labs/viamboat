import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/usecase/get_resource_names_use_case.dart';
import 'package:viam_marine/app/presentation/page/main/cubit/main_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class MainCubit extends ViamCubit<MainState> {
  final GetResourceNamesUseCase _getResourceNamesUseCase;

  MainCubit(this._getResourceNamesUseCase) : super(const MainState.idle());

  Future<void> init() async {
    try {
      emit(const MainState.loading());
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
}
