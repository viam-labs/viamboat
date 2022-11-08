import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/di/di.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';

final json = {
  "project_id": "robot-location-secret",
  // "private_key_id": "gacc9lht600wz9mcpf45b4optb1ahhrwjs7fttmvjcr1lpgz"
  "private_key_id": "gacc9lht600wz9mcpf45b4optb1ahhrwjs7fttmvjcr1lpgz"
};

class ViamResourceDataSource {
  final ViamClientChannel _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  ViamResourceDataSource(this._client, this._authHeaderInterceptor);

  Future<List<ResourceName>> getResourceNames(
      ViamResourceSubtypeFilters? subtype, ViamResourceNameFilters? name) async {
    final stub = RobotServiceClient(
      _client,
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );
    final response = await stub.resourceNames(
      ResourceNamesRequest(),
    );
    final resources = response.resources
        .where((resource) => subtype == null || subtype.value == resource.subtype)
        .where((resource) => name == null || resource.name.contains(name.value))
        .toList(growable: false);
    return resources;
  }
}
