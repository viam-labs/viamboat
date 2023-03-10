import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ResourceDataSource {
  final Viam _viamSdk;

  ResourceDataSource(this._viamSdk);

  Future<List<ViamResourceName>> getResourceNames(
    ViamAppResourceSubtypeFilter? subtype,
    ViamAppResourceNameFilter? name,
  ) =>
      _viamSdk.viamResourceService.getResourceNames();
}
