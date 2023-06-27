import 'package:equatable/equatable.dart';
import 'package:viam_sdk/viam_sdk.dart';

const metersToKnots = 1.9438444924406;

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
        final double speed = tabularData.data.fields['Y'].numberValue;

        return SpeedDataDto(
          speed: speed * metersToKnots,
          date: tabularData.timeReceived.toDateTime().toLocal(),
        );
      }).toList(growable: false);
}
