import 'package:equatable/equatable.dart';
import 'package:viam_sdk/viam_sdk.dart';

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

  ViamAppResourceName copyWith({
    String? namespace,
    String? type,
    String? subtype,
    String? name,
  }) =>
      ViamAppResourceName(
        namespace ?? this.namespace,
        type ?? this.type,
        subtype ?? this.subtype,
        name ?? this.name,
      );

  @override
  List<Object?> get props => [
        namespace,
        type,
        subtype,
        name,
      ];
}

extension ViamAppResourceNameMapper on ResourceName {
  ViamAppResourceName toViamAppResourceName() => ViamAppResourceName(
        namespace,
        type,
        subtype,
        name,
      );
}

extension ViamResourceNameMapper on ViamAppResourceName {
  //TODO: Remove after full migration
  ViamResourceName toOldDto() => ViamResourceName(
        namespace,
        type,
        subtype,
        name,
      );

  ResourceName toDto() => ResourceName(
        name: name,
        namespace: namespace,
        subtype: subtype,
        type: type,
      );
}
