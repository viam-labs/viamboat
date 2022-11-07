import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';

final json = {
  "project_id": "robot-location-secret",
  // "private_key_id": "gacc9lht600wz9mcpf45b4optb1ahhrwjs7fttmvjcr1lpgz"
  "private_key_id": "gacc9lht600wz9mcpf45b4optb1ahhrwjs7fttmvjcr1lpgz"
};

class ViamResourceDataSource {
  final ClientChannel _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  ViamResourceDataSource(this._client, this._authHeaderInterceptor);

  Future<List<ResourceName>> getResourceNames(
      ViamResourceSubtypeFilters? subtype, ViamResourceNameFilters? name) async {
    //final credentials = JwtServiceAccountAuthenticator("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoicm9ib3QtbG9jYXRpb24tc2VjcmV0IiwicGF5bG9hZCI6ImdhY2M5bGh0NjAwd3o5bWNwZjQ1YjRvcHRiMWFoaHJ3anM3ZnR0bXZqY3IxbHBneiIsImlhdCI6MTUxNjIzOTAyMn0.qUy9koHwoVvi4yA9XGtlKwN4df3mgv8hx5FHWFWxitY");

    final stub = RobotServiceClient(_client, interceptors: [_authHeaderInterceptor]);
    final response = await stub.resourceNames(
      ResourceNamesRequest(),
      //options: credentials.toCallOptions,
      // options: credentials.toCallOptions,
      // options: CallOptions(metadata: {
      //   "type": "robot-location-secret",
      //   "payload": "gacc9lht600wz9mcpf45b4optb1ahhrwjs7fttmvjcr1lpgz",
      // }),
    );
    final resources = response.resources
        .where((resource) => subtype == null || subtype.value == resource.subtype)
        .where((resource) => name == null || resource.name.contains(name.value))
        .toList(growable: false);
    return resources;
  }
}
