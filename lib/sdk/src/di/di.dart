import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/resource/service/resource_service_impl.dart';
import 'package:viam_marine/sdk/src/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/sdk/src/domain/resource/service/resource_service.dart';
import 'package:viam_marine/sdk/src/viam_sdk.dart';
import 'package:viam_marine/sdk/src/viam_sdk_impl.dart';

ViamSdk createViam(String url) {
  final grpcClient = _getGrpcClient(url);
  return ViamSdkImpl(
    _getService(grpcClient),
    ViamSensorServiceImpl(
      ViamSensorDataSource(
        grpcClient,
      ),
    ),
  );
}

ViamResourceService _getService(ClientChannel client) {
  return ViamResourceServiceImpl(
    _getDataSource(client),
  );
}

ViamResourceDataSource _getDataSource(ClientChannel client) {
  return ViamResourceDataSource(
    client,
  );
}

ClientChannel _getGrpcClient(String url) {
  return ClientChannel(
    url,
    port: 8081,
    options: ChannelOptions(
      credentials: const ChannelCredentials.insecure(),
      codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );
}
