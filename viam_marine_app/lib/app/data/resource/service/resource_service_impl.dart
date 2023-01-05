import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/app/data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service.dart';

@Injectable(as: ViamAppResourceService)
class ViamAppResourceServiceImpl implements ViamAppResourceService {
  final ResourceDataSource _dataSource;
  final ViamResourceNameToViamAppResourceNameMapper _viamResourceNameToViamAppResourceNameMapper;

  ViamAppResourceServiceImpl(
    this._dataSource,
    this._viamResourceNameToViamAppResourceNameMapper,
  );

  @override
  Future<List<ViamAppResourceName>> getResourceNames({
    ViamAppResourceSubtypeFilter? subtype,
    ViamAppResourceNameFilter? name,
  }) async {
    final result = await _dataSource.getResourceNames(null, null); //subtype, name);
    return result.map<ViamAppResourceName>(_viamResourceNameToViamAppResourceNameMapper).toList(growable: false);
  }
}
