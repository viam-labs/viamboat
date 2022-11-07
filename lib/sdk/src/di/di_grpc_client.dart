part of 'di.dart';

ClientChannel _getGrpcClient(String url) => ClientChannel(
      'camera-main.to5iytcwxn.local.viam.cloud',
      port: 8080,
      options: ChannelOptions(
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),

    );
