import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ResourceDataSource {
  final ViamSdk _viamSdk;

  ResourceDataSource(this._viamSdk);

  Future<List<ViamResourceName>> getResourceNames(
    ViamAppResourceSubtypeFilters? subtype,
    ViamAppResourceNameFilters? name,
  ) =>
      _viamSdk.getResourceNames(
        subtype != null ? ViamResourceSubtypeFilters.values[subtype.index] : null,
        name != null ? ViamResourceNameFilters.values[name.index] : null,
      );
}
