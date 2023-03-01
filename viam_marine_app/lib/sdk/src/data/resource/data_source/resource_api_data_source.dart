import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/gen/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/gen/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';

class ViamResourceDataSource {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final String? secure;

  ViamResourceDataSource(
    this._client,
    this._authHeaderInterceptor,
    this.secure,
  );

  Future<List<ResourceName>> getResourceNames(
      ViamResourceSubtypeFilters? subtype, ViamResourceNameFilters? name) async {
    final stub = RobotServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
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
