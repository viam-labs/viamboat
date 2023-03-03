import 'package:equatable/equatable.dart';

class ViamAppOrganization extends Equatable {
  final String id;
  final String name;
  final DateTime createdOn;

  const ViamAppOrganization(
    this.id,
    this.name,
    this.createdOn,
  );

  @override
  List<Object?> get props => [
        id,
        name,
        createdOn,
      ];
}
