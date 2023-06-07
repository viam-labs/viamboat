// ignore_for_file: avoid_dynamic_calls
import 'package:equatable/equatable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

class MovementDataDto extends Equatable {
  final DateTime date;
  final double latitude;
  final double longitude;

  const MovementDataDto({
    required this.date,
    required this.latitude,
    required this.longitude,
  });

  @override
  List<Object?> get props => [
        date,
        latitude,
        longitude,
      ];
}

extension MovementDataDtoMapper on ViamTabularDataResponse {
  List<MovementDataDto> toMovementDataDtoList() => data.map((tabularData) {
        final double long = tabularData.data.fields[ViamConstants.longitudeKey].numberValue;
        final double lat = tabularData.data.fields[ViamConstants.latitudeKey].numberValue;

        return MovementDataDto(
          date: tabularData.timeReceived.toDateTime().toLocal(),
          latitude: lat,
          longitude: long,
        );
      }).toList(growable: false);
}
