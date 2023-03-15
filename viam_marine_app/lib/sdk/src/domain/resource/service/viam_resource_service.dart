import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/domain/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/domain/resource/mapper/resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/gen/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';

class ViamResourceService {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final String? secure;
  final ResourceNameToViamResourceNameMapper _resourceNameToViamResourceNameMapper;

  ViamResourceService(
    this._client,
    this._authHeaderInterceptor,
    this.secure,
    this._resourceNameToViamResourceNameMapper,
  );

  Future<List<ViamResourceName>> getResourceNames(
    ViamResourceSubtypeFilters? subtype,
    ViamResourceNameFilters? name,
  ) async {
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

    return resources.map<ViamResourceName>(_resourceNameToViamResourceNameMapper).toList(growable: false);
  }
}
