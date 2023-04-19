import 'package:equatable/equatable.dart';

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
