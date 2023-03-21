import 'package:viam_marine/sdk/src/gen/app/data/v1/data.pb.dart';

class ViamCaptureMetadata {
  final String orgId;
  final String locationId;
  final String robotName;
  final String robotId;
  final String partName;
  final String partId;
  final String componentType;
  final String componentModel;
  final String componentName;
  final String methodName;
  final Map<String, dynamic> methodParameters;
  final List<String> tags;
  final String mimeType;

  ViamCaptureMetadata(
    this.orgId,
    this.locationId,
    this.robotName,
    this.robotId,
    this.partName,
    this.partId,
    this.componentType,
    this.componentModel,
    this.componentName,
    this.methodName,
    this.methodParameters,
    this.tags,
    this.mimeType,
  );
}

extension ViamCaptureMetadataMapper on CaptureMetadata {
  ViamCaptureMetadata toDomain() => ViamCaptureMetadata(
        orgId,
        locationId,
        robotName,
        robotId,
        partName,
        partId,
        componentType,
        componentModel,
        componentName,
        methodName,
        methodParameters,
        tags,
        mimeType,
      );
}
