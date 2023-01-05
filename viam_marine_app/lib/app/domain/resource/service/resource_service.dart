import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';

abstract class ViamAppResourceService {
  Future<List<ViamAppResourceName>> getResourceNames({
    ViamAppResourceSubtypeFilter? subtype,
    ViamAppResourceNameFilter? name,
  });
}
