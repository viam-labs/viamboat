import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamAppAppDataSource {
  final Viam _viam;

  const ViamAppAppDataSource(this._viam);

  Future<List<ViamOrganization>> listOrganizations() => _viam.viamAppService.listOrganizations();
}
