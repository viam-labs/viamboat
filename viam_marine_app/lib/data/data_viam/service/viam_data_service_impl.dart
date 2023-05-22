// ignore_for_file: avoid_dynamic_calls
import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart';
import 'package:viam_marine/data/data_viam/models/movement_data_dto.dart';
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

    final List<DepthOverTime> depthOverTimeList = response.toDepthOverTimeList();

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
  Future<List<WaterDepth>> getWaterDepthData({
    required String locationId,
    required String robotName,
    String? depthSensorName,
    String? movementSensorName,
  }) async {
    final ViamTabularDataResponse depthTabularDataResponse = await super(
      () => _dataViamDataSource.tabularDataByFilter(
        viamDataRequest: ViamDataRequest(
          filter: ViamFilter(
            locationIds: [locationId],
            robotName: robotName,
            componentName: depthSensorName,
          ),
        ),
      ),
    );

    final ViamTabularDataResponse movementTabularDataResponse = await super(
      () => _dataViamDataSource.tabularDataByFilter(
        viamDataRequest: ViamDataRequest(
          filter: ViamFilter(
            locationIds: [locationId],
            robotName: robotName,
            componentName: movementSensorName,
          ),
        ),
      ),
    );

    List<DepthOverTime> depthOverTimeList = depthTabularDataResponse.toDepthOverTimeList();

    List<MovementDataDto> movementList = movementTabularDataResponse.toMovementDataDtoList();

    depthOverTimeList.sort((a, b) => a.date.compareTo(b.date));
    movementList.sort((a, b) => a.date.compareTo(b.date));

    final waterDepth = <WaterDepth>[];
    Duration? captureInterval;

    if (depthOverTimeList.length > 2) {
      captureInterval = depthOverTimeList[0].date.difference(depthOverTimeList[1].date).abs();
    }

    for (final depth in depthOverTimeList) {
      DateTime baseCaptureDate = depth.date;

      MovementDataDto? closestSensorData = _findNearestSensorData<MovementDataDto>(
        baseCaptureDate,
        movementList,
        captureInterval,
        (element) => element.date,
      );

      if (closestSensorData != null) {
        waterDepth.add(WaterDepth(
          lat: closestSensorData.latitude,
          long: closestSensorData.longitude,
          depth: depth.depth,
          date: depth.date,
        ));
      }
    }

    return waterDepth.where((item) {
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
  Future<List<WaterTemperature>> getWaterTemperatureData({
    required String locationId,
    required String robotName,
    String? tempSensorName,
    String? movementSensorName,
  }) async {
    final ViamTabularDataResponse tempTabularDataResponse = await super(
      () => _dataViamDataSource.tabularDataByFilter(
        viamDataRequest: ViamDataRequest(
          filter: ViamFilter(
            locationIds: [locationId],
            robotName: robotName,
            componentName: tempSensorName,
          ),
        ),
      ),
    );

    final ViamTabularDataResponse movementTabularDataResponse = await super(
      () => _dataViamDataSource.tabularDataByFilter(
        viamDataRequest: ViamDataRequest(
          filter: ViamFilter(
            locationIds: [locationId],
            robotName: robotName,
            componentName: movementSensorName,
          ),
        ),
      ),
    );

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

  T? _findNearestSensorData<T>(
    DateTime targetDate,
    List<T> sensorList,
    Duration? captureInterval,
    DateTime Function(T element) getDate,
  ) {
    T? nearestSensorData;
    Duration? closestTimeDiffernce;

    for (final sensorData in sensorList) {
      DateTime sensorDate = getDate(sensorData);
      Duration timeDifference = targetDate.difference(sensorDate).abs();

      if (closestTimeDiffernce == null ||
          (timeDifference < closestTimeDiffernce && (captureInterval == null || timeDifference <= captureInterval))) {
        closestTimeDiffernce = timeDifference;
        nearestSensorData = sensorData;
      }
    }

    return nearestSensorData;
  }
}
