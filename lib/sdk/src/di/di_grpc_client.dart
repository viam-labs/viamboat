part of 'di.dart';

ClientChannel _getGrpcClient(String url) => ClientChannel(
      url,
      port: 8081,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
