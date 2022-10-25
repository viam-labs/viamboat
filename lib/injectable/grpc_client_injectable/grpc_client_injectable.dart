import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';
import 'package:viam_marine/injectable/grpc_client_injectable/grpc_client_injectable.mocks.dart';
import 'package:viam_marine/injectable/staging_environment.dart';

const timeout = Duration(seconds: 20);

@GenerateMocks([ClientChannel])

@module
abstract class GrpcModule {
  @lazySingleton
  @dev
  @prod
  @staging
  ClientChannel gRpcClient() {
    final channel = ClientChannel(
      'localhost',
      port: 8081,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry:
        CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    return channel;
  }

  @singleton
  @test
  ClientChannel testGrpcClient() => MockClientChannel();
}
