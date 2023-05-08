import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:viam_marine/extensions/build_context_extension.dart';

class WaterDepth extends Equatable {
  final double lat;
  final double long;
  final double depth;
  final DateTime date;
  final bool isActive;

  const WaterDepth({
    required this.lat,
    required this.long,
    required this.depth,
    required this.date,
    this.isActive = true,
  });

  @override
  List<Object?> get props => [
        lat,
        long,
        depth,
        date,
        isActive,
      ];

  Color getColor(BuildContext context) {
    if (!isActive) return context.getColors(listen: false).grey2;

    if (depth > 7.0) {
      return context.getColors(listen: false).waterDepthHigh;
    } else if (depth > 2.0) {
      return context.getColors(listen: false).waterDepthMid;
    } else {
      return context.getColors(listen: false).waterDepthLow;
    }
  }

  WaterDepth copyWith({
    double? newLat,
    double? newLong,
    double? newDepth,
    DateTime? newDate,
    bool? newIsActive,
  }) =>
      WaterDepth(
        lat: newLat ?? lat,
        long: newLong ?? long,
        depth: newDepth ?? depth,
        date: newDate ?? date,
        isActive: newIsActive ?? isActive,
      );
}
