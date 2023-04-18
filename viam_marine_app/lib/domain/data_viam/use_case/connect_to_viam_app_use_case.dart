import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class ConnectToViamAppUseCase {
  final ViamDataService _viamDataService;

  const ConnectToViamAppUseCase(this._viamDataService);

  Future<void> call({required String? accessToken}) async =>
      _viamDataService.connectToViamApp(accessToken: accessToken);
}
