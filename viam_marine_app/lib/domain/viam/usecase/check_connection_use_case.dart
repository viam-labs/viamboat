import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/viam/service/viam_service.dart';

@injectable
class CheckConnectionUseCase {
  final ViamService _viamService;

  const CheckConnectionUseCase(this._viamService);

  Future<void> call() => _viamService.checkConnection();
}
