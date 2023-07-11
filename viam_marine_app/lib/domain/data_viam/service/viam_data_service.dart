import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_cunsumption_per_mile.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';

abstract class ViamDataService {
  Stream<FilterEvent> get filterStream;

  Stream<List<FuelConsumptionOverTime>> getFuelConsumptionOverTimeStream({
    required String fuelSensorName,
  });

  Future<void> fetchFuelConsumptionOverTimeData({
    required String locationId,
    required String robotName,
    String? fuelSensorName,
    String? movementSensorName,
  });

  Future<List<DepthOverTime>> getDepthOverTimeData({
    String? sensorName,
    required String locationId,
    required String robotName,
    required bool isInit,
  });

  Future<List<FuelConsumptionPerMile>> getFuelConsumptionPerMileData();

  Future<List<WaterDepth>> getWaterDepthData({
    required String locationId,
    required String robotName,
    String? depthSensorName,
    String? movementSensorName,
  });

  Future<List<WaterTemperature>> getWaterTemperatureData({
    required String locationId,
    required String robotName,
    String? tempSensorName,
    String? movementSensorName,
  });

  void setNewTemperatureFilters(WaterFilter filter);

  void setNewDepthFilters(WaterFilter filter);

  void setNewDepthOverTimeFilters(WaterFilter filter);

  void clearCachedData();

  WaterFilter getWaterFilters(FiltersType type);
}
