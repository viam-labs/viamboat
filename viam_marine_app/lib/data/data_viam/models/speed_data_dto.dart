// ignore_for_file: avoid_dynamic_calls

import 'package:equatable/equatable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

class SpeedDataDto extends Equatable {
  final double speed;
  final DateTime date;

  const SpeedDataDto({
    required this.speed,
    required this.date,
  });

  @override
  List<Object?> get props => [
        speed,
        date,
      ];
}

extension SpeedDataDtoMapper on ViamTabularDataResponse {
  List<SpeedDataDto> toSpeedDataDtoList() => data.map((tabularData) {
        final double speed = tabularData.data.fields[ViamConstants.linearVelocityYKey].numberValue;

        return SpeedDataDto(
          speed: speed * ViamConstants.metersToKnots,
          date: tabularData.timeReceived.toDateTime().toLocal(),
        );
      }).toList(growable: false);
}
