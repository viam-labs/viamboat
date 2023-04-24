import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';

@injectable
class GetWaterDepthDataUseCase {
  List<WaterDepth> call() => _waterDepthData;
}

const _waterDepthData = <WaterDepth>[
  WaterDepth(lat: 40.53, long: -74.140, depth: 2.0),
  WaterDepth(lat: 40.53, long: -74.138, depth: 2.0),
  WaterDepth(lat: 40.52, long: -74.141, depth: 2.0),
  WaterDepth(lat: 40.498389, long: -74.069586, depth: 3.0),
  WaterDepth(lat: 40.486760, long: -74.002833, depth: 5.0),
  WaterDepth(lat: 40.465957, long: -73.929317, depth: 6.0),
  WaterDepth(lat: 40.415377, long: -73.897852, depth: 7.0),
  WaterDepth(lat: 40.449612, long: -73.859921, depth: 8.0),
  WaterDepth(lat: 40.449612, long: -73.859921, depth: 9.0),
  WaterDepth(lat: 40.534597, long: -73.971670, depth: 9.0),
  WaterDepth(lat: 40.548605, long: -74.013144, depth: 9.0),
  WaterDepth(lat: 40.585361, long: -74.037338, depth: 9.0),
  WaterDepth(lat: 40.542203, long: -74.081349, depth: 5.0),
  WaterDepth(lat: 40.517170, long: -74.091935, depth: 4.0),
  WaterDepth(lat: 40.53, long: -74.140, depth: 2.0),
];