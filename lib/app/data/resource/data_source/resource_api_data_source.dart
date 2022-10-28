import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart' as app;
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ResourceDataSource {
  final ViamSdk _viamSdk;

  ResourceDataSource(this._viamSdk);

  Future<List<ResourceName>> getResourceNames(
    app.ResourceSubtypeFilters? subtype,
    app.ResourceNameFilters? name,
  ) async {
    await _viamSdk.getResourceNames(ResourceSubtypeFilters.sensor, ResourceNameFilters.fluid);
    return [];
    // final stub = RobotServiceClient(_client);
    // final response = await stub.resourceNames(ResourceNamesRequest());
    // final resources = response.resources
    //     .where((resource) => subtype == null || subtype.value == resource.subtype)
    //     .where((resource) => name == null || resource.name.contains(name.value))
    //     .toList(growable: false);
    // return resources;
  }
}
