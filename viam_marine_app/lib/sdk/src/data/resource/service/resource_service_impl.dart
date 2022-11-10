import 'package:viam_marine/sdk/src/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/resource/service/resource_service.dart';

class ViamResourceServiceImpl extends ViamResourceService {
  final ViamResourceDataSource _dataSource;
  final ResourceNameToViamResourceNameMapper _resourceNameToViamResourceNameMapper;

  ViamResourceServiceImpl(
    this._dataSource,
    this._resourceNameToViamResourceNameMapper,
  );

  @override
  Future<List<ViamResourceName>> getResourceNames({
    ViamResourceSubtypeFilters? subtype,
    ViamResourceNameFilters? name,
  }) async {
    final result = await _dataSource.getResourceNames(subtype, name);
    return result.map<ViamResourceName>(_resourceNameToViamResourceNameMapper).toList(growable: false);
  }
}
