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

        final levelReading = readings.values
            .firstWhere((reading) => reading.structValue.fields[ViamConstants.readingNameKey].stringValue == 'Level');

        final level = levelReading.structValue.fields['Reading'].numberValue;

        final capacityReading = readings.values.firstWhere(
            (reading) => reading.structValue.fields[ViamConstants.readingNameKey].stringValue == 'Capacity');

        final capacity = capacityReading.structValue.fields['Reading'].numberValue;

        final instanceReading = readings.values.firstWhere(
            (reading) => reading.structValue.fields[ViamConstants.readingNameKey].stringValue == 'Instance');

        final instance = instanceReading.structValue.fields['Reading'].numberValue;

        return FuelDataDto(
          level: level,
          capacity: capacity,
          instance: instance,
          date: tabularData.timeReceived.toDateTime().toLocal(),
        );
      }).toList(growable: false);
}
