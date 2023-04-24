import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/build_context_extension.dart';

class WaterTemperature extends Equatable {
  final double lat;
  final double long;
  final double temperature;

  const WaterTemperature({
    required this.lat,
    required this.long,
    required this.temperature,
  });

  @override
  List<Object?> get props => [
        lat,
        long,
        temperature,
      ];

  Color getColor(BuildContext context) {
    if (temperature > 10) {
      return context.getColors(listen: false).waterTemperatureHigh;
    } else if (temperature > 4.9) {
      return context.getColors(listen: false).waterTemperatureMid;
    } else {
      return context.getColors(listen: false).waterTemperatureLow;
    }
  }
}
