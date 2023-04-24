import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';

@injectable
class GetWaterTemperatureDataUseCase {
  List<WaterTemperature> call() => _waterTemperatureData;
}

const _waterTemperatureData = <WaterTemperature>[
  WaterTemperature(lat: 40.53, long: -74.140, temperature: 15.0),
  WaterTemperature(lat: 40.53, long: -74.138, temperature: 15.0),
  WaterTemperature(lat: 40.52, long: -74.141, temperature: 14.0),
  WaterTemperature(lat: 40.498389, long: -74.069586, temperature: 11.0),
  WaterTemperature(lat: 40.486760, long: -74.002833, temperature: 8.0),
  WaterTemperature(lat: 40.465957, long: -73.929317, temperature: 8.0),
  WaterTemperature(lat: 40.415377, long: -73.897852, temperature: 4.0),
  WaterTemperature(lat: 40.449612, long: -73.859921, temperature: 4.0),
  WaterTemperature(lat: 40.449612, long: -73.859921, temperature: 5.0),
  WaterTemperature(lat: 40.534597, long: -73.971670, temperature: 4.0),
  WaterTemperature(lat: 40.548605, long: -74.013144, temperature: 4.0),
  WaterTemperature(lat: 40.585361, long: -74.037338, temperature: 11.0),
  WaterTemperature(lat: 40.542203, long: -74.081349, temperature: 15.0),
  WaterTemperature(lat: 40.517170, long: -74.091935, temperature: 16.0),
  WaterTemperature(lat: 40.53, long: -74.140, temperature: 15.0),
];