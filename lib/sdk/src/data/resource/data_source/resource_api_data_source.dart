import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/viam/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';

class ViamResourceDataSource {
  final ClientChannel _client;

  ViamResourceDataSource(this._client);

  Future<List<ResourceName>> getResourceNames(ViamResourceSubtypeFilters? subtype, ViamResourceNameFilters? name) async {
    final stub = RobotServiceClient(_client);
    final response = await stub.resourceNames(ResourceNamesRequest());
    final resources = response.resources
        .where((resource) => subtype == null || subtype.value == resource.subtype)
        .where((resource) => name == null || resource.name.contains(name.value))
        .toList(growable: false);
    return resources;
  }
}
