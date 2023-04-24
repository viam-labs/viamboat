import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:viam_marine/extensions/build_context_extension.dart';

class WaterDepth extends Equatable {
  final double lat;
  final double long;
  final double depth;

  const WaterDepth({
    required this.lat,
    required this.long,
    required this.depth,
  });

  @override
  List<Object?> get props => [
        lat,
        long,
        depth,
      ];

  Color getColor(BuildContext context) {
    if (depth > 7.0) {
      return context.getColors(listen: false).waterDepthHigh;
    } else if (depth > 2.0) {
      return context.getColors(listen: false).waterDepthMid;
    } else {
      return context.getColors(listen: false).waterDepthLow;
    }
  }
}
