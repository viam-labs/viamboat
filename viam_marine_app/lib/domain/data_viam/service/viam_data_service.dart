import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_cunsumption_per_mile.dart';
import 'package:viam_sdk/viam_sdk.dart';

abstract class ViamDataService {
  Future<ViamBinaryDataResponse> binaryDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
    bool? includeBinary,
  });

  Future<ViamTabularDataResponse> tabularDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
  });

  Future<List<DepthOverTime>> getDepthOverTimeData();

  Future<List<FuelConsumptionPerMile>> getFuelConsumptionPerMileData();

  Future<void> connectToViamApp({required String? accessToken});
}
