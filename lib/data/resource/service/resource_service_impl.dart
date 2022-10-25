import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/domain/resource/service/resource_service_impl.dart';

@Injectable(as: ResourceService)
class ResourceServiceImpl implements ResourceService {
  final ResourceDataSource _dataSource;

  const ResourceServiceImpl(this._dataSource);

  @override
  Future<List<ResourceName>> getResourceNames({
    ResourceSubtypeFilters? subtype,
    ResourceNameFilters? name,
  }) =>
      _dataSource.getResourceNames(
        subtype,
        name,
      );
}
