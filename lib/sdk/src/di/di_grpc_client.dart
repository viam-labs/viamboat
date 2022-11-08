part of 'di.dart';

ViamClientChannel _getGrpcClient(String url, int port, String? payload) => ViamClientChannel(
      url,
      payload,
      port: port,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );

class ViamClientChannel extends ClientChannel {
  final String url;
  final String? payload;

  ViamClientChannel(
    this.url,
    this.payload, {
    super.port,
    super.options,
  }) : super(url);
}
