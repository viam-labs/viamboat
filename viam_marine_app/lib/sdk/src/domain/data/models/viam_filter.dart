import 'package:viam_marine/sdk/src/domain/data/models/viam_capture_interval.dart';
import 'package:viam_marine/sdk/src/domain/data/models/viam_tags_filter.dart';
import 'package:viam_marine/sdk/src/gen/app/data/v1/data.pb.dart';

class ViamFilter {
  final String? componentName;
  final String? componentType;
  final String? componentModel;
  final String? method;
  final String? robotName;
  final String? robotId;
  final String? partName;
  final String? partId;
  final List<String>? locationIds;
  final List<String>? orgIds;
  final List<String>? mimeType;
  final ViamCaptureInterval? captureInterval;
  final ViamTagsFilter? tagsFilter;

  const ViamFilter({
    this.componentName,
    this.componentType,
    this.componentModel,
    this.method,
    this.robotName,
    this.robotId,
    this.partName,
    this.partId,
    this.locationIds,
    this.orgIds,
    this.mimeType,
    this.captureInterval,
    this.tagsFilter,
  });
}

extension FilterMapper on ViamFilter {
  Filter toDto() => Filter(
        componentModel: componentModel,
        componentName: componentName,
        componentType: componentType,
        method: method,
        locationIds: locationIds,
        mimeType: mimeType,
        orgIds: orgIds,
        partId: partId,
        partName: partName,
        robotName: robotName,
        robotId: robotId,
        tagsFilter: tagsFilter?.toDto(),
        interval: captureInterval?.toDto(),
      );
}
