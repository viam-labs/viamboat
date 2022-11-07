part of 'di.dart';

ClientChannel _getGrpcClient(String url) => ClientChannel(
      url,
      port: 8080,
      options: ChannelOptions(
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
