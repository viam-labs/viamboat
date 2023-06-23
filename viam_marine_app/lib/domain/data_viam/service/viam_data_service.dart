import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_cunsumption_per_mile.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
import 'package:viam_sdk/viam_sdk.dart';

abstract class ViamDataService {
  Stream<FilterEvent> get filterStream;

  Future<ViamBinaryDataResponse> binaryDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
    bool? includeBinary,
  });

  Future<ViamTabularDataResponse> tabularDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
  });

  Future<List<DepthOverTime>> getDepthOverTimeData({
    String? sensorName,
    required String locationId,
    required String robotName,
  });

  Future<List<FuelConsumptionPerMile>> getFuelConsumptionPerMileData();

  Future<List<FuelConsumptionOverTime>> getFuelConsumptionOverTimeData();

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

  WaterFilter getWaterFilters(FiltersType type);
}
