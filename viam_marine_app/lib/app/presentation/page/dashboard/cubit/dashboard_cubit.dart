import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final ResourceService _resourceService;
  final BoatService _boatService;

  DashboardCubit(
    this._resourceService,
    this._boatService,
  ) : super(const DashboardState.idle());

  Future<void> init() async {
    try {
      emit(const DashboardState.loading());

      final boatName = await _getCurrentBoatName();

      final resources = await _resourceService.getResourceNames();
      final List<ViamAppResourceName> sensors = [];
      final List<ViamAppResourceName> positionSensors = [];

      for (final resource in resources) {
        if (resource.subtype == ViamAppResourceSubtypeFilter.sensor.name &&
            resource.name.contains(ViamAppResourceNameFilter.fluid.name)) {
          sensors.add(resource);
        } else if (resource.name.contains(ViamAppResourceNameFilter.movement.name)) {
          positionSensors.add(resource);
        } else {
          continue;
        }
      }

      sortSensorsByName(sensors);

      emit(DashboardState.loaded(
        sensors,
        positionSensors,
        boatName,
      ));
    } catch (_) {
      //TODO: need to add error tracking
      emit(const DashboardState.error());
    }
  }

  Future<String> _getCurrentBoatName() async {
    final boats = await _boatService.getBoats();
    final currentBoatId = _boatService.getCurrentBoatId();

    return boats.firstWhere((boat) => boat.id == currentBoatId).name;
  }

  void sortSensorsByName(List<ViamAppResourceName> sensors) => sensors.sort(
        (sensorA, sensorB) => sensorA.name.compareTo(sensorB.name),
      );
}
