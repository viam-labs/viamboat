// ignore_for_file: avoid_dynamic_calls
import 'package:equatable/equatable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

class DepthOverTime extends Equatable {
  final DateTime date;
  final double depth;

  const DepthOverTime({
    required this.date,
    required this.depth,
  });

  @override
  List<Object?> get props => [
        date,
        depth,
      ];
}

extension DepthOverTimeMapper on ViamTabularDataResponse {
  List<DepthOverTime> toDepthOverTimeList() => data.map((tabularData) {
        final readings = tabularData.data.fields[ViamConstants.readingsKey].listValue;
        final depthReading = readings.values.firstWhere((reading) =>
            reading.structValue.fields[ViamConstants.readingNameKey].stringValue == ViamConstants.depthReadingName);

        return DepthOverTime(
          date: tabularData.timeReceived.toDateTime(),
          depth: depthReading.structValue.fields[ViamConstants.readingKey].numberValue,
        );
      }).toList(growable: false);
}
