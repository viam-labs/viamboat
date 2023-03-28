import 'package:equatable/equatable.dart';

class ViamAppSensorReadings extends Equatable {
  final String namespace;
  final String type;
  final String subtype;
  final String name;
  final Map<String, double> readings;

  const ViamAppSensorReadings(
    this.namespace,
    this.type,
    this.subtype,
    this.name,
    this.readings,
  );

  @override
  List<Object?> get props => [
        namespace,
        type,
        subtype,
        name,
        readings,
      ];
}
