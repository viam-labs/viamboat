import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final ResourceService _resourceService;
  final SensorService _sensorService;

  DashboardCubit(
    this._resourceService,
    this._sensorService,
  ) : super(const DashboardState.idle());

  Future<void> init() async {
    try {
      final resource = await _resourceService.getResourceNames();
      final sensorsData = await _sensorService.getSensorData(resource.resources);

      emit(
        DashboardState.loaded(sensors: List.filled(6, '')),
      );
    } catch (error) {
      //TODO: it will be removed
      //ignore: unused_local_variable
      final e = error;
    }
  }
}
