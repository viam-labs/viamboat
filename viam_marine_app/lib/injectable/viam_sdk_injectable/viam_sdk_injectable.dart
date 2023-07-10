// ignore_for_file: deprecated_member_use

import 'package:injectable/injectable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamSdkModule {
  @Named(ViamConstants.sdkClientName)
  @singleton
  Viam get viam => Viam.instance();
}

@module
abstract class ViamSdkDirectDataClientModule {
  @Named(ViamConstants.sdkDirectClientName)
  @singleton
  Viam get viam => Viam.instance();
}
