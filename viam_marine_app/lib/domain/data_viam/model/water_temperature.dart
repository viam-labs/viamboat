import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/build_context_extension.dart';

class WaterTemperature extends Equatable {
  final double lat;
  final double long;
  final double temperature;
  final DateTime date;
  final bool isActive;

  const WaterTemperature({
    required this.lat,
    required this.long,
    required this.temperature,
    required this.date,
    this.isActive = true,
  });

  @override
  List<Object?> get props => [
        lat,
        long,
        temperature,
        date,
        isActive,
      ];

  Color getColor(BuildContext context) {
    if (!isActive) return context.getColors(listen: false).grey2;

    if (temperature > 10) {
      return context.getColors(listen: false).waterTemperatureHigh;
    } else if (temperature > 4.9) {
      return context.getColors(listen: false).waterTemperatureMid;
    } else {
      return context.getColors(listen: false).waterTemperatureLow;
    }
  }

  WaterTemperature copyWith({
    double? newLat,
    double? newLong,
    double? newTemperature,
    DateTime? newDate,
    bool? newIsActive,
  }) =>
      WaterTemperature(
        lat: newLat ?? lat,
        long: newLong ?? long,
        temperature: newTemperature ?? temperature,
        date: newDate ?? date,
        isActive: newIsActive ?? isActive,
      );
}
