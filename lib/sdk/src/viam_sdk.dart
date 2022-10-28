import 'package:viam_marine/sdk/src/di/di.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';

abstract class ViamSdk {
  factory ViamSdk(url) => createViam(url);

  Future<List<ViamResourceName>> getResourceNames(
    ResourceSubtypeFilters? subtype,
    ResourceNameFilters? name,
  );
}
