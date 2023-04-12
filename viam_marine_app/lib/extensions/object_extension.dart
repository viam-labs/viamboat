import 'package:grpc/grpc.dart';

const _errorCodeName = 'UNAUTHENTICATED';
const _errorMessage = 'token is expired';
const _errorCode = 16;

extension IsGrpcTokenExpiredError on Object {
  bool isGrpcTokenExpiredError() {
    final Object error = this;

    if (error is GrpcError &&
        error.code == _errorCode &&
        error.codeName == _errorCodeName &&
        (error.message?.contains(_errorMessage) ?? false)) {
      return true;
    }

    return false;
  }
}
