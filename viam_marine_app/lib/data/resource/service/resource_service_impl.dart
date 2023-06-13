import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/resource/service/resource_service.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';
import 'package:viam_sdk/viam_sdk.dart';

@Injectable(as: ViamAppResourceService)
class ViamAppResourceServiceImpl extends ServiceBase implements ViamAppResourceService {
  final ResourceDataSource _dataSource;

  ViamAppResourceServiceImpl(
    super.tokenExpiredBroadcaster,
    this._dataSource,
  );

  @override
  List<ViamAppResourceName> getResourceNames() {
    final List<ResourceName> result = _dataSource.getResourceNames();

    return result.map<ViamAppResourceName>((resource) => resource.toViamAppResourceName()).toList(growable: false);
  }
}
