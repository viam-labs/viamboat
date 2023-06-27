// ignore_for_file: avoid_dynamic_calls

import 'package:equatable/equatable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

class FuelDataDto extends Equatable {
  final double level;
  final double capacity;
  final double instance;
  final DateTime date;

  const FuelDataDto({
    required this.level,
    required this.capacity,
    required this.instance,
    required this.date,
  });

  @override
  List<Object?> get props => [
        level,
        capacity,
        instance,
        date,
      ];
}

extension FuelDataDtoMapper on ViamTabularDataResponse {
  List<FuelDataDto> toFuelDataDtoList() => data.map((tabularData) {
        final readings = tabularData.data.fields[ViamConstants.readingsKey].listValue;

        final levelReading = readings.values.firstWhere(
          (reading) => reading.structValue.fields[ViamConstants.readingNameKey].stringValue == ViamConstants.levelKey,
        );

        final level = levelReading.structValue.fields[ViamConstants.readingKey].numberValue;

        final capacityReading = readings.values.firstWhere(
          (reading) =>
              reading.structValue.fields[ViamConstants.readingNameKey].stringValue == ViamConstants.capacityKey,
        );

        final capacity = capacityReading.structValue.fields[ViamConstants.readingKey].numberValue;

        final instanceReading = readings.values.firstWhere(
          (reading) =>
              reading.structValue.fields[ViamConstants.readingNameKey].stringValue == ViamConstants.instanceKey,
        );

        final instance = instanceReading.structValue.fields[ViamConstants.readingKey].numberValue;

        return FuelDataDto(
          level: level,
          capacity: capacity,
          instance: instance,
          date: tabularData.timeReceived.toDateTime().toLocal(),
        );
      }).toList(growable: false);
}
