part of 'di.dart';

ViamClientChannel _getGrpcClient(String url, String? payload) => ViamClientChannel(
      url,
      payload,
      port: 8080,
      options: ChannelOptions(
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
