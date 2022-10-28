
import 'package:viam_marine/app/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';

abstract class ResourceService {
  Future<List<ResourceName>> getResourceNames({
    ResourceSubtypeFilters? subtype,
    ResourceNameFilters? name,
  });
}
