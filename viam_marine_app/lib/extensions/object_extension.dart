import 'package:grpc/grpc.dart';

extension IsGrpcTokenExpiredError on Object {
  bool isGrpcTokenExpiredError() {
    final Object error = this;

    if (error is GrpcError && error.code == 16 && (error.message?.contains('token is expired') ?? false)) {
      return true;
    }

    return false;
  }
}
