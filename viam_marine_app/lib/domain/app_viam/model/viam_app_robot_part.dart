import 'package:equatable/equatable.dart';
import 'package:viam_sdk/viam_sdk.dart';

class ViamAppRobotPart extends Equatable {
  final String name;
  final bool isMainPart;
  final String address;

  const ViamAppRobotPart({
    required this.name,
    required this.isMainPart,
    required this.address,
  });

  @override
  List<Object?> get props => [
        name,
        isMainPart,
        address,
      ];
}

extension ViamAppRobotPartMapper on ViamRobotPart {
  ViamAppRobotPart toDomain() => ViamAppRobotPart(
        name: name,
        isMainPart: mainPart,
        address: fqdn,
      );
}
