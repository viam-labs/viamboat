import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/app/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';

@Injectable(as: ResourceService)
class ResourceServiceImpl implements ResourceService {
  final ResourceDataSource _dataSource;

  ResourceServiceImpl(this._dataSource);

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
