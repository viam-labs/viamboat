import 'package:injectable/injectable.dart';
import 'package:viam_sdk/viam_sdk.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamSdkModule {
  @singleton
  Viam get viam => Viam.instance();
}
