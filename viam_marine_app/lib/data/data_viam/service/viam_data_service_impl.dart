// ignore_for_file: avoid_dynamic_calls
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_cunsumption_per_mile.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';
import 'package:viam_sdk/viam_sdk.dart';

@LazySingleton(as: ViamDataService)
class ViamDataServiceImpl extends ServiceBase implements ViamDataService {
  final DataViamDataSource _dataViamDataSource;

  final _filterStream = StreamController<FilterEvent>.broadcast();
  WaterFilter _waterDepthFilters = const WaterFilter();
  WaterFilter _waterTemperatureFilters = const WaterFilter();

  @override
  Stream<FilterEvent> get filterStream => _filterStream.stream;

  ViamDataServiceImpl(
    super.tokenExpiredBroadcaster,
    this._dataViamDataSource,
  );

  @override
  Future<ViamBinaryDataResponse> binaryDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
    bool? includeBinary,
  }) async =>
      super(() => _dataViamDataSource.binaryDataByFilter(
            viamDataRequest,
            countOnly,
            includeBinary,
          ));

  @override
  Future<ViamTabularDataResponse> tabularDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
  }) async =>
      super(() => _dataViamDataSource.tabularDataByFilter(
            viamDataRequest: viamDataRequest,
            countOnly: countOnly,
          ));

  @override
  Future<void> connectToViamApp({required String? accessToken}) async => super(
        () => _dataViamDataSource.connectToViamApp(accessToken: accessToken),
      );

  @override
  Future<List<DepthOverTime>> getDepthOverTimeData({
    required String locationId,
    required String robotName,
    String? sensorName,
  }) async {
    final ViamTabularDataResponse response = await super(
      () => _dataViamDataSource.tabularDataByFilter(
        viamDataRequest: ViamDataRequest(
          filter: ViamFilter(
            locationIds: [locationId],
            robotName: robotName,
            componentName: sensorName,
          ),
        ),
      ),
    );

    final List<DepthOverTime> depthOverTimeList = response.data.map((tabularData) {
      final dynamic readings = tabularData.data.fields['Readings'].listValue;
      final dynamic depthReading =
          readings.values.firstWhere((reading) => reading.structValue.fields['ReadingName'].stringValue == 'Depth');

      return DepthOverTime(
        date: tabularData.timeReceived.toDateTime(),
        depth: depthReading.structValue.fields['Reading'].numberValue,
      );
    }).toList();

    return depthOverTimeList;
  }

  @override
  Future<List<FuelConsumptionPerMile>> getFuelConsumptionPerMileData() async {
    final List<FuelConsumptionPerMile> mockData = [
      FuelConsumptionPerMile(date: DateTime(2023, 14, 4, 9, 30), value: 90),
      FuelConsumptionPerMile(date: DateTime(2023, 14, 4, 10, 00), value: 100),
      FuelConsumptionPerMile(date: DateTime(2023, 14, 4, 10, 30), value: 160),
      FuelConsumptionPerMile(date: DateTime(2023, 14, 4, 11, 00), value: 200),
      FuelConsumptionPerMile(date: DateTime(2023, 14, 4, 11, 30), value: 70),
      FuelConsumptionPerMile(date: DateTime(2023, 14, 4, 12, 00), value: 350),
      FuelConsumptionPerMile(date: DateTime(2023, 14, 4, 12, 30), value: 300),
      FuelConsumptionPerMile(date: DateTime(2023, 14, 4, 13, 00), value: 400),
      FuelConsumptionPerMile(date: DateTime(2023, 14, 4, 13, 30), value: 143),
    ];

    return Future.delayed(
      const Duration(seconds: 2),
      () => mockData,
    );
  }

  @override
  Future<List<FuelConsumptionOverTime>> getFuelConsumptionOverTimeData() {
    final data = [
      FuelConsumptionOverTime(date: DateTime(2023, 14, 4, 9, 30), value: 30),
      FuelConsumptionOverTime(date: DateTime(2023, 14, 4, 10, 00), value: 10),
      FuelConsumptionOverTime(date: DateTime(2023, 14, 4, 10, 30), value: 80),
      FuelConsumptionOverTime(date: DateTime(2023, 14, 4, 11, 00), value: 60),
      FuelConsumptionOverTime(date: DateTime(2023, 14, 4, 11, 30), value: 70),
      FuelConsumptionOverTime(date: DateTime(2023, 14, 4, 12, 00), value: 35),
      FuelConsumptionOverTime(date: DateTime(2023, 14, 4, 12, 30), value: 30),
      FuelConsumptionOverTime(date: DateTime(2023, 14, 4, 13, 00), value: 50),
      FuelConsumptionOverTime(date: DateTime(2023, 14, 4, 13, 30), value: 50),
    ];
    return Future.delayed(
      const Duration(seconds: 2),
      () => data,
    );
  }

  @override
  Future<List<WaterDepth>> getWaterDepthData() async {
    final depth = await super(
      () => _dataViamDataSource.tabularDataByFilter(
        viamDataRequest: const ViamDataRequest(
          filter: ViamFilter(
            locationIds: ['xl6oiexz3d'],
            robotName: 'Camera',
            componentName: 'viamboat-data:depth-0',
          ),
        ),
      ),
    );

    final mov = await super(
      () => _dataViamDataSource.tabularDataByFilter(
        viamDataRequest: const ViamDataRequest(
          filter: ViamFilter(
            locationIds: ['xl6oiexz3d'],
            robotName: 'Camera',
            componentName: 'viamboat-data:movement',
          ),
        ),
      ),
    );

    List<DepthOverTime> depthOverTimeList = depth.data.map((tabularData) {
      final depthReading = tabularData.data.fields['Readings'].listValue.values
          .firstWhere((element) => element.structValue.fields['ReadingName'].stringValue == 'Depth');

      return DepthOverTime(
        date: tabularData.timeReceived.toDateTime(),
        depth: depthReading.structValue.fields['Reading'].numberValue,
      );
    }).toList();

    List<MovementDto> movementList = mov.data.map((tabularData) {
      final long = tabularData.data.fields['Lng'].numberValue;
      final lat = tabularData.data.fields['Lat'].numberValue;

      return MovementDto(
        date: tabularData.timeReceived.toDateTime(),
        lat: lat,
        long: long,
      );
    }).toList();

    depthOverTimeList.sort((a, b) => a.date.compareTo(b.date));
    movementList.sort((a, b) => a.date.compareTo(b.date));

    final waterDepth = <WaterDepth>[];
    final dif = depthOverTimeList.first.date.difference(depthOverTimeList[1].date).abs();

    for (var depth in depthOverTimeList) {
      DateTime baseCaptureDate = depth.date;

      MovementDto? closestSensorData = findNearestSensorData(
        baseCaptureDate,
        movementList,
        dif,
      );

      if (closestSensorData != null) {
        // Merge the sensor readings from list1 and list2 into a single combined data point
        waterDepth.add(WaterDepth(
          lat: closestSensorData.lat,
          long: closestSensorData.long,
          depth: depth.depth,
          date: depth.date,
        ));
      }
    }
    List<WaterDepth> waterDepth2 = [];
    for (final depth in depthOverTimeList) {
      final movement = movementList.firstWhereOrNull((element) =>
          element.date.year == depth.date.year &&
          element.date.month == depth.date.month &&
          element.date.day == depth.date.day &&
          element.date.hour == depth.date.hour &&
          element.date.minute == depth.date.minute &&
          element.date.second == depth.date.second);

      if (movement != null) {
        waterDepth2.add(WaterDepth(
          lat: movement.lat,
          long: movement.long,
          depth: depth.depth,
          date: depth.date,
        ));
      }
    }

    final data = <WaterDepth>[
      WaterDepth(lat: 40.53, long: -74.140, depth: 2.0, date: DateTime(2023, 04, 07)),
      WaterDepth(lat: 40.53, long: -74.138, depth: 2.0, date: DateTime(2023, 04, 08)),
      WaterDepth(lat: 40.52, long: -74.141, depth: 2.0, date: DateTime(2023, 04, 09)),
      WaterDepth(lat: 40.498389, long: -74.069586, depth: 3.0, date: DateTime(2023, 04, 10)),
      WaterDepth(lat: 40.486760, long: -74.002833, depth: 5.0, date: DateTime(2023, 04, 11)),
      WaterDepth(lat: 40.465957, long: -73.929317, depth: 6.0, date: DateTime(2023, 04, 12)),
      WaterDepth(lat: 40.415377, long: -73.897852, depth: 7.0, date: DateTime(2023, 04, 13)),
      WaterDepth(lat: 40.449612, long: -73.859921, depth: 8.0, date: DateTime(2023, 04, 14)),
      WaterDepth(lat: 40.449612, long: -73.859921, depth: 9.0, date: DateTime(2023, 04, 15)),
      WaterDepth(lat: 40.534597, long: -73.971670, depth: 9.0, date: DateTime(2023, 04, 16)),
      WaterDepth(lat: 40.548605, long: -74.013144, depth: 9.0, date: DateTime(2023, 04, 17)),
      WaterDepth(lat: 40.585361, long: -74.037338, depth: 9.0, date: DateTime(2023, 04, 18)),
      WaterDepth(lat: 40.542203, long: -74.081349, depth: 5.0, date: DateTime(2023, 04, 19)),
      WaterDepth(lat: 40.517170, long: -74.091935, depth: 4.0, date: DateTime(2023, 04, 20)),
      WaterDepth(lat: 40.53, long: -74.140, depth: 2.0, date: DateTime(2023, 04, 21)),
    ];

    return data.where((item) {
      if (_waterDepthFilters.minDate != null) {
        return item.date.isAfter(_waterDepthFilters.minDate!);
      } else {
        return true;
      }
    }).where((item) {
      if (_waterDepthFilters.maxDate != null) {
        return item.date.isBefore(_waterDepthFilters.maxDate!);
      } else {
        return true;
      }
    }).map((item) {
      if (_waterDepthFilters.minValue != null) {
        return item.copyWith(newIsActive: item.depth >= _waterDepthFilters.minValue!);
      } else {
        return item;
      }
    }).map((item) {
      if (_waterDepthFilters.minValue != null && _waterDepthFilters.maxValue != null) {
        return item.copyWith(
          newIsActive: item.depth >= _waterDepthFilters.minValue! && item.depth <= _waterDepthFilters.maxValue!,
        );
      } else if (_waterDepthFilters.minValue != null) {
        return item.copyWith(newIsActive: item.depth >= _waterDepthFilters.minValue!);
      } else if (_waterDepthFilters.maxValue != null) {
        return item.copyWith(newIsActive: item.depth <= _waterDepthFilters.maxValue!);
      } else {
        return item;
      }
    }).toList();
  }

  @override
  Future<List<WaterTemperature>> getWaterTemperatureData() async {
    final data = <WaterTemperature>[
      WaterTemperature(lat: 40.53, long: -74.140, temperature: 15.0, date: DateTime(2023, 4, 7)),
      WaterTemperature(lat: 40.53, long: -74.138, temperature: 15.0, date: DateTime(2023, 4, 8)),
      WaterTemperature(lat: 40.52, long: -74.141, temperature: 14.0, date: DateTime(2023, 4, 9)),
      WaterTemperature(lat: 40.498389, long: -74.069586, temperature: 11.0, date: DateTime(2023, 4, 10)),
      WaterTemperature(lat: 40.486760, long: -74.002833, temperature: 8.0, date: DateTime(2023, 4, 11)),
      WaterTemperature(lat: 40.465957, long: -73.929317, temperature: 8.0, date: DateTime(2023, 4, 12)),
      WaterTemperature(lat: 40.415377, long: -73.897852, temperature: 4.0, date: DateTime(2023, 4, 13)),
      WaterTemperature(lat: 40.449612, long: -73.859921, temperature: 4.0, date: DateTime(2023, 4, 14)),
      WaterTemperature(lat: 40.449612, long: -73.859921, temperature: 5.0, date: DateTime(2023, 4, 15)),
      WaterTemperature(lat: 40.534597, long: -73.971670, temperature: 4.0, date: DateTime(2023, 4, 16)),
      WaterTemperature(lat: 40.548605, long: -74.013144, temperature: 4.0, date: DateTime(2023, 4, 17)),
      WaterTemperature(lat: 40.585361, long: -74.037338, temperature: 11.0, date: DateTime(2023, 4, 18)),
      WaterTemperature(lat: 40.542203, long: -74.081349, temperature: 15.0, date: DateTime(2023, 4, 19)),
      WaterTemperature(lat: 40.517170, long: -74.091935, temperature: 16.0, date: DateTime(2023, 4, 20)),
      WaterTemperature(lat: 40.53, long: -74.140, temperature: 15.0, date: DateTime(2023, 4, 21)),
    ];
    return data.where((item) {
      if (_waterTemperatureFilters.minDate != null) {
        return item.date.isAfter(_waterTemperatureFilters.minDate!);
      } else {
        return true;
      }
    }).where((item) {
      if (_waterTemperatureFilters.maxDate != null) {
        return item.date.isBefore(_waterTemperatureFilters.maxDate!);
      } else {
        return true;
      }
    }).map((item) {
      if (_waterTemperatureFilters.minValue != null && _waterTemperatureFilters.maxValue != null) {
        return item.copyWith(
          newIsActive: item.temperature >= _waterTemperatureFilters.minValue! &&
              item.temperature <= _waterTemperatureFilters.maxValue!,
        );
      } else if (_waterTemperatureFilters.minValue != null) {
        return item.copyWith(newIsActive: item.temperature >= _waterTemperatureFilters.minValue!);
      } else if (_waterTemperatureFilters.maxValue != null) {
        return item.copyWith(newIsActive: item.temperature <= _waterTemperatureFilters.maxValue!);
      } else {
        return item;
      }
    }).toList();
  }

  @override
  void setNewDepthFilters(WaterFilter filter) {
    _waterDepthFilters = filter;
    _filterStream.add(FilterEvent.waterDepth);
  }

  @override
  void setNewTemperatureFilters(WaterFilter filter) {
    _waterTemperatureFilters = filter;
    _filterStream.add(FilterEvent.waterTemperature);
  }

  @override
  WaterFilter getWaterFilters(FiltersType type) {
    switch (type) {
      case FiltersType.waterDepth:
        return _waterDepthFilters;
      case FiltersType.waterTemperature:
        return _waterTemperatureFilters;
    }
  }

  Future<void> dispose() async {
    await _filterStream.close();
  }
}

class MovementDto {
  final DateTime date;
  final double lat;
  final double long;

  const MovementDto({
    required this.date,
    required this.lat,
    required this.long,
  });
}

MovementDto? findNearestSensorData(DateTime targetDate, List<MovementDto> sensorList, Duration interval) {
  MovementDto? nearestSensorData;
  Duration? closestDiff;

  for (var sensorData in sensorList) {
    Duration diff = targetDate.difference(sensorData.date).abs();

    if (closestDiff == null || (diff < closestDiff && diff < interval)) {
      closestDiff = diff;
      nearestSensorData = sensorData;
    }
  }

  return nearestSensorData;
}
