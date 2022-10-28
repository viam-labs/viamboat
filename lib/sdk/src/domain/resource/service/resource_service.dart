import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';

abstract class ViamResourceService {
  Future<List<ViamResourceName>> getResourceNames({
    ResourceSubtypeFilters? subtype,
    ResourceNameFilters? name,
  });
}
