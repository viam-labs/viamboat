// ignore_for_file: avoid_dynamic_calls
import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart';
import 'package:viam_marine/data/data_viam/models/fuel_consumption_dto.dart';
import 'package:viam_marine/data/data_viam/models/fuel_data_dto.dart';
import 'package:viam_marine/data/data_viam/models/movement_data_dto.dart';
import 'package:viam_marine/data/data_viam/models/speed_data_dto.dart';
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
  final Map<String, StreamController<List<FuelConsumptionOverTime>>> _fuelConsumptionOverTimeStreamMap = {};
  final Map<String, List<FuelConsumptionOverTime>> _fuelConsumptionOverTimeMap = {};
  final Map<String, String> _lastFetchedFuelObjectIds = {};
  final Map<String, String> _lastFetchedSpeedObjectIds = {};
  final Map<String, List<List<FuelConsumptionDto>>> _groupedFuelConsumptionByTimeMap = {};
  final Map<String, bool> _isFetchingMap = {};
  final List<String?> _depthOverTimeLastObjectIds = [];
  final List<DepthOverTime> _depthOverTime = [];
  WaterFilter _waterDepthFilters = const WaterFilter();
  WaterFilter _waterTemperatureFilters = const WaterFilter();
  WaterFilter _depthOverTimeFilters = const WaterFilter();

  ViamDataServiceImpl(
    super.tokenExpiredBroadcaster,
    this._dataViamDataSource,
  );

  @override
  Stream<FilterEvent> get filterStream => _filterStream.stream;

  @override
  Future<List<DepthOverTime>> getDepthOverTimeData({
    String? sensorName,
    required String locationId,
    required String robotName,
    required bool isInit,
  }) async {
    final ViamTabularDataResponse response = await super(
      () => _dataViamDataSource.tabularDataByFilter(
        viamDataRequest: ViamDataRequest(
          filter: ViamFilter(
            locationIds: [locationId],
            robotName: robotName,
            componentName: sensorName,
          ),
          order: ViamOrder.descending,
          last: isInit ? null : _depthOverTimeLastObjectIds.last,
          limit: 64,
        ),
      ),
    );

    _depthOverTimeLastObjectIds.add(response.last);

    final List<DepthOverTime> depthOverTimeList = response.toDepthOverTimeList();

    if (isInit && depthOverTimeList.isNotEmpty) {
      _depthOverTime.clear();
    }
    _depthOverTime.addAll(depthOverTimeList);

    final filteredDepthOverTimeList = _depthOverTime.where((item) {
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

    return filteredDepthOverTimeList;
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
        waterTemp.add(
          WaterTemperature(
            lat: closestSensorData.latitude,
            long: closestSensorData.longitude,
            temperature: tempData.temperature,
            date: tempData.date,
          ),
        );
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
  Stream<List<FuelConsumptionOverTime>> getFuelConsumptionOverTimeStream({required String fuelSensorName}) {
    if (_fuelConsumptionOverTimeStreamMap.containsKey(fuelSensorName)) {
      return _fuelConsumptionOverTimeStreamMap[fuelSensorName]!.stream;
    }

    _fuelConsumptionOverTimeStreamMap[fuelSensorName] = StreamController<List<FuelConsumptionOverTime>>.broadcast();

    return _fuelConsumptionOverTimeStreamMap[fuelSensorName]!.stream;
  }

  @override
  Future<void> fetchFuelConsumptionOverTimeData({
    required String locationId,
    required String robotName,
    String? fuelSensorName,
    String? movementSensorName,
  }) async {
    if (_isFetchingMap[fuelSensorName!] ?? false) {
      _fuelConsumptionOverTimeStreamMap[fuelSensorName]?.add(_fuelConsumptionOverTimeMap[fuelSensorName]!);
    } else {
      while (true) {
        final ViamTabularDataResponse fuelTabularDataResponse = await super(
          () => _dataViamDataSource.tabularDataByFilter(
            viamDataRequest: ViamDataRequest(
              limit: 100,
              order: ViamOrder.descending,
              last: _lastFetchedFuelObjectIds[fuelSensorName],
              filter: ViamFilter(
                locationIds: [locationId],
                robotName: robotName,
                componentName: fuelSensorName,
              ),
            ),
          ),
        );

        _lastFetchedFuelObjectIds[fuelSensorName] = fuelTabularDataResponse.last;

        final ViamTabularDataResponse speedTabularDataResponse = await super(
          () => _dataViamDataSource.tabularDataByFilter(
            viamDataRequest: ViamDataRequest(
              limit: 100,
              order: ViamOrder.descending,
              last: _lastFetchedSpeedObjectIds[fuelSensorName],
              filter: ViamFilter(
                locationIds: [locationId],
                robotName: robotName,
                componentName: movementSensorName,
                method: ViamConstants.linearVelocityMethodName,
              ),
            ),
          ),
        );

        _lastFetchedSpeedObjectIds[fuelSensorName] = speedTabularDataResponse.last;

        final List<FuelDataDto> fuelDataList = fuelTabularDataResponse.toFuelDataDtoList();

        final List<SpeedDataDto> speedData = speedTabularDataResponse.toSpeedDataDtoList();

        if (speedData.isEmpty || fuelDataList.isEmpty) {
          _isFetchingMap[fuelSensorName] = true;
          break;
        }

        final List<FuelConsumptionDto> fuelConsumptionDtoList = _getFuelConsumptionDtoList(
          speedData,
          fuelDataList,
        );

        List<List<FuelConsumptionDto>> groupedFuelConsumptionByTime =
            _groupFuelConsumptionDtoListByTime(fuelConsumptionDtoList, fuelSensorName);

        final List<FuelConsumptionOverTime> fuelConsumptionOverTimeList =
            _calculateFuelConsumptionOverTime(groupedFuelConsumptionByTime);

        _fuelConsumptionOverTimeMap[fuelSensorName] = fuelConsumptionOverTimeList;

        _fuelConsumptionOverTimeStreamMap[fuelSensorName]?.add(_fuelConsumptionOverTimeMap[fuelSensorName]!);
      }
    }
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

  @override
  void setNewDepthOverTimeFilters(WaterFilter filter) {
    _depthOverTimeFilters = filter;
    _filterStream.add(FilterEvent.depthOverTime);
  }

  List<List<FuelConsumptionDto>> _groupFuelConsumptionDtoListByTime(
      List<FuelConsumptionDto> fuelConsumptionDtoList, String? fuelSensorName) {
    List<List<FuelConsumptionDto>> groupedFuelConsumptionByTime =
        _groupedFuelConsumptionByTimeMap[fuelSensorName] ?? [];

    for (var i = 0; i < fuelConsumptionDtoList.length; i++) {
      final currentItem = fuelConsumptionDtoList[i];

      if (groupedFuelConsumptionByTime.isEmpty) {
        final List<FuelConsumptionDto> newGroup = [];
        newGroup.add(currentItem);

        groupedFuelConsumptionByTime.add(newGroup);
      } else {
        final int lastGroupIndex = groupedFuelConsumptionByTime.length - 1;
        final List<FuelConsumptionDto> lastGroup = groupedFuelConsumptionByTime[lastGroupIndex];
        final FuelConsumptionDto lastItem = lastGroup.first;

        final Duration timeDuration = currentItem.date.difference(lastItem.date).abs();

        if (timeDuration <= const Duration(minutes: 15)) {
          groupedFuelConsumptionByTime[lastGroupIndex].add(currentItem);
        } else {
          final List<FuelConsumptionDto> newGroup = [];
          newGroup.add(currentItem);

          groupedFuelConsumptionByTime.add(newGroup);
        }
      }
    }

    _groupedFuelConsumptionByTimeMap[fuelSensorName!] = groupedFuelConsumptionByTime;

    return groupedFuelConsumptionByTime;
  }

  List<FuelConsumptionDto> _getFuelConsumptionDtoList(
    List<SpeedDataDto> speedData,
    List<FuelDataDto> fuelDataList,
  ) {
    final List<FuelConsumptionDto> fuelConsumptionDtoList = [];

    for (final fuelData in fuelDataList) {
      DateTime baseCaptureDate = fuelData.date;

      SpeedDataDto? closestSpeedData = _findNearestSensorData<SpeedDataDto>(
        baseCaptureDate,
        speedData,
        null,
        (element) => element.date,
      );

      if (closestSpeedData != null) {
        fuelConsumptionDtoList.add(FuelConsumptionDto(
          capacity: fuelData.capacity,
          date: fuelData.date,
          level: fuelData.level,
          speed: closestSpeedData.speed,
        ));
      }
    }
    return fuelConsumptionDtoList;
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

  List<FuelConsumptionOverTime> _calculateFuelConsumptionOverTime(
    List<List<FuelConsumptionDto>> groupedFuelConsumptionByTime,
  ) {
    final List<FuelConsumptionOverTime> fuelConsumptionOverTimeList = [];

    for (final fuelConsumptionByTimeGroup in groupedFuelConsumptionByTime) {
      final firstFuelConsumptionByTime = fuelConsumptionByTimeGroup.last;
      final lastFuelConsumptionByTime = fuelConsumptionByTimeGroup.first;

      final firstFuelConsumpitonByTimeGallons = firstFuelConsumptionByTime.level * firstFuelConsumptionByTime.capacity;

      final lastFuelConsumpitonByTimeGallons = lastFuelConsumptionByTime.level * lastFuelConsumptionByTime.capacity;

      final gallonsUsed = firstFuelConsumpitonByTimeGallons - lastFuelConsumpitonByTimeGallons;

      var sumOfKts = 0.0;

      for (final fuelConsumption in fuelConsumptionByTimeGroup) {
        sumOfKts += fuelConsumption.speed;
      }

      final averageKts = sumOfKts / fuelConsumptionByTimeGroup.length;

      final fuelConsumptionPerMile = gallonsUsed.abs() / averageKts;

      fuelConsumptionOverTimeList.add(FuelConsumptionOverTime(
        date: firstFuelConsumptionByTime.date,
        value: fuelConsumptionPerMile.isNaN ? 0 : fuelConsumptionPerMile,
      ));
    }
    return fuelConsumptionOverTimeList;
  }

  Future<void> dispose() async {
    await _filterStream.close();
    _fuelConsumptionOverTimeStreamMap.forEach((key, value) async {
      await value.close();
    });
  }
}
