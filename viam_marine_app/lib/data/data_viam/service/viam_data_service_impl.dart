// ignore_for_file: avoid_dynamic_calls
import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart';
import 'package:viam_marine/data/data_viam/models/movement_data_dto.dart';
import 'package:viam_marine/data/data_viam/models/temperature_data_dto.dart';
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
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

@LazySingleton(as: ViamDataService)
class ViamDataServiceImpl extends ServiceBase implements ViamDataService {
  final DataViamDataSource _dataViamDataSource;

  final _filterStream = StreamController<FilterEvent>.broadcast();
  WaterFilter _waterDepthFilters = const WaterFilter();
  WaterFilter _waterTemperatureFilters = const WaterFilter();
  WaterFilter _depthOverTimeFilters = const WaterFilter();

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

    return depthOverTimeList.where((item) {
      if (_depthOverTimeFilters.minDate != null) {
        return item.date.isAfter(_depthOverTimeFilters.minDate!);
      } else {
        return true;
      }
    }).where((item) {
      if (_depthOverTimeFilters.maxDate != null) {
        return item.date.isBefore(_depthOverTimeFilters.maxDate!);
      } else {
        return true;
      }
    }).where((item) {
      if (_depthOverTimeFilters.minValue != null) {
        return item.depth >= _depthOverTimeFilters.minValue!;
      } else {
        return true;
      }
    }).where((item) {
      if (_depthOverTimeFilters.maxValue != null) {
        return item.depth <= _depthOverTimeFilters.maxValue!;
      } else {
        return true;
      }
    }).toList(growable: false);
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
            method: ViamConstants.movementSensorMethodName,
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
            method: ViamConstants.movementSensorMethodName,
          ),
        ),
      ),
    );

    final List<TemperatureDataDto> temperatureDataDtoList = tempTabularDataResponse.toTemperatureDataDtoList();

    List<MovementDataDto> movementList = movementTabularDataResponse.toMovementDataDtoList();

    temperatureDataDtoList.sort((a, b) => a.date.compareTo(b.date));
    movementList.sort((a, b) => a.date.compareTo(b.date));

    final waterTemp = <WaterTemperature>[];
    Duration? captureInterval;

    if (temperatureDataDtoList.length > 2) {
      captureInterval = temperatureDataDtoList[0].date.difference(temperatureDataDtoList[1].date).abs();
    }

    for (final tempData in temperatureDataDtoList) {
      DateTime baseCaptureDate = tempData.date;

      MovementDataDto? closestSensorData = _findNearestSensorData<MovementDataDto>(
        baseCaptureDate,
        movementList,
        captureInterval,
        (element) => element.date,
      );

      if (closestSensorData != null) {
        waterTemp.add(WaterTemperature(
          lat: closestSensorData.latitude,
          long: closestSensorData.longitude,
          temperature: tempData.temperature,
          date: tempData.date,
        ));
      }
    }

    return waterTemp.where((item) {
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
      case FiltersType.depthOverTime:
        return _depthOverTimeFilters;
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

  @override
  void setNewDepthOverTimeFilters(WaterFilter filter) {
    _depthOverTimeFilters = filter;
    _filterStream.add(FilterEvent.depthOverTime);
  }
}
