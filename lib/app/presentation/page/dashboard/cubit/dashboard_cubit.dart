import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final ResourceService _resourceService;
  final ViamSdk _viamSdk;

  DashboardCubit(
    this._resourceService,
    this._viamSdk,
  ) : super(const DashboardState.idle());

  Future<void> init() async {
    try {
      final auth = await _viamSdk.getAuthData();

      final resources = await _resourceService.getResourceNames();
      final List<ViamAppResourceName> sensors = [];
      final List<ViamAppResourceName> positionSensors = [];

      for (final resource in resources) {
        if (resource.subtype == ViamAppResourceSubtypeFilter.sensor.name &&
            resource.name.contains(ViamAppResourceNameFilter.fluid.name)) {
          sensors.add(resource);
        } else if (resource.name == ViamAppResourceNameFilter.movement.name) {
          positionSensors.add(resource);
        } else {
          continue;
        }
      }

      emit(DashboardState.loaded(
        sensors,
        positionSensors,
      ));
    } catch (error) {
      //TODO: it will be removed
      //ignore: unused_local_variable
      final e = error;
    }
  }
}
