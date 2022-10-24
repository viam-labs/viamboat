
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/viam/robot/v1/robot.pbgrpc.dart';

@injectable
class ResourceDataSource {
  final ClientChannel _client;

  ResourceDataSource(this._client);

  Future<ResourceNamesResponse> getResourceNames() async {
    final stub = RobotServiceClient(_client);
    final response = await stub.resourceNames(ResourceNamesRequest());
    return response;
  }
}
