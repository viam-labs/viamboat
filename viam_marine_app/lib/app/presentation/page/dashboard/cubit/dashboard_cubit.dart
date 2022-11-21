import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/usecase/get_resource_names_use_case.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pb.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final GetResourceNamesUseCase _getResourceNamesUseCase;
  final GetBoatsUseCase _getBoatsUseCase;
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;

  DashboardCubit(
    this._getResourceNamesUseCase,
    this._getBoatsUseCase,
    this._getCurrentBoatIdUseCase,
  ) : super(const DashboardState.idle());

  Future<void> init() async {
    try {
      emit(const DashboardState.loading());

      final boatName = await _getCurrentBoatName();

      final resources = await _getResourceNamesUseCase(null, null);

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
    final boats = await _getBoatsUseCase();
    final currentBoatId = _getCurrentBoatIdUseCase();

    return boats.firstWhere((boat) => boat.id == currentBoatId).name;
  }

  void sortSensorsByName(List<ViamAppResourceName> sensors) => sensors.sort(
        (sensorA, sensorB) => sensorA.name.compareTo(sensorB.name),
      );
}
