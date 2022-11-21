import 'package:equatable/equatable.dart';

class ViamAppResourceName extends Equatable {
  final String namespace;
  final String type;
  final String subtype;
  final String name;

  const ViamAppResourceName(
    this.namespace,
    this.type,
    this.subtype,
    this.name,
  );

  @override
  List<Object?> get props => [
        namespace,
        type,
        subtype,
        name,
      ];
}
