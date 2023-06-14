import 'package:equatable/equatable.dart';
import 'package:viam_marine/data/movement/model/compass_heading_dto.dart';

class ViamAppCompassHeading extends Equatable {
  final double heading;

  const ViamAppCompassHeading(this.heading);

  @override
  List<Object?> get props => [heading];
}

extension ViamAppCompassHeadingMapper on CompassHeadingDto {
  ViamAppCompassHeading toDomain() => ViamAppCompassHeading(heading);
}
