import 'package:viam_marine/injectable/staging_environment.dart';
import 'package:injectable/injectable.dart';

abstract class GetApiUrlUseCase {
  String getApiUrl() {
    return '';
  }
}

@dev
@Injectable(as: GetApiUrlUseCase)
class DevGetApiUrlUseCase implements GetApiUrlUseCase {
  @override
  String getApiUrl() {
    return 'dev';
  }
}

@staging
@Injectable(as: GetApiUrlUseCase)
class StagingGetApiUrlUseCase implements GetApiUrlUseCase {
  @override
  String getApiUrl() {
    return 'staging';
  }
}

@prod
@Injectable(as: GetApiUrlUseCase)
class ProdGetApiUrlUseCase implements GetApiUrlUseCase {
  @override
  String getApiUrl() {
    return 'prod';
  }
}
