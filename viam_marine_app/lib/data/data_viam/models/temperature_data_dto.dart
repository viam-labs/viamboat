// ignore_for_file: avoid_dynamic_calls

import 'package:equatable/equatable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

class TemperatureDataDto extends Equatable {
  final DateTime date;
  final double temperature;

  const TemperatureDataDto({
    required this.date,
    required this.temperature,
  });

  @override
  List<Object?> get props => [
        date,
        temperature,
      ];
}

extension TemperatureDataDtoMapper on ViamTabularDataResponse {
  List<TemperatureDataDto> toTemperatureDataDtoList() => data.map((tabularData) {
        final readings = tabularData.data.fields[ViamConstants.readingsKey].listValue;
        final tempReadings = readings.values.firstWhere(
            (reading) => reading.structValue.fields[ViamConstants.readingNameKey].stringValue == "Actual Temperature");

        return TemperatureDataDto(
          date: tabularData.timeReceived.toDateTime(),
          temperature: tempReadings.structValue.fields[ViamConstants.readingKey].numberValue,
        );
      }).toList(growable: false);
}
