import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ResourceDataSource {
  final Viam _viamSdk;

  ResourceDataSource(@Named(ViamConstants.sdkClientName) this._viamSdk);

  Future<List<ViamResourceName>> getResourceNames(
    ViamAppResourceSubtypeFilter? subtype,
    ViamAppResourceNameFilter? name,
  ) =>
      _viamSdk.viamResourceService.getResourceNames(null, null);
}
