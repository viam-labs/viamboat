import 'package:grpc/grpc.dart';
import 'package:viam_marine/app/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/app/data/viam/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';

class ViamResourceDataSource {
  final ClientChannel _client;

  ViamResourceDataSource(this._client);

  Future<List<ResourceName>> getResourceNames(ResourceSubtypeFilters? subtype, ResourceNameFilters? name) async {
    final stub = RobotServiceClient(_client);
    final response = await stub.resourceNames(ResourceNamesRequest());
    final resources = response.resources
        .where((resource) => subtype == null || subtype.value == resource.subtype)
        .where((resource) => name == null || resource.name.contains(name.value))
        .toList(growable: false);
    return resources;
  }
}
