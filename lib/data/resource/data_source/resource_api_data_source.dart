import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/data/viam/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/domain/resource/model/resource_filters.dart';

@injectable
class ResourceDataSource {
  final ClientChannel _client;

  ResourceDataSource(this._client);

  Future<List<ResourceName>> getResourceNames(ResourceSubtypeFilters? subtype, ResourceNameFilters? name) async {
    final stub = RobotServiceClient(_client);
    final response = await stub.resourceNames(ResourceNamesRequest());
    final resources = response.resources
        .where((resource) => (subtype != null) ? subtype.value == resource.subtype : true)
        .where((resource) => (name != null) ? resource.name.contains(name.value) : true)
        .toList(growable: false);
    return resources;
  }
}
