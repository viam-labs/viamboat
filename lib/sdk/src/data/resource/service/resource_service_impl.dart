import 'package:viam_marine/sdk/src/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/resource/service/resource_service.dart';

class ViamResourceServiceImpl extends ViamResourceService {
  final ViamResourceDataSource _dataSource;

  ViamResourceServiceImpl(this._dataSource);

  @override
  Future<List<ViamResourceName>> getResourceNames({
    ResourceSubtypeFilters? subtype,
    ResourceNameFilters? name,
  }) async {
    print("SERVICE IMPL!!!");
    return [];
  }
}
