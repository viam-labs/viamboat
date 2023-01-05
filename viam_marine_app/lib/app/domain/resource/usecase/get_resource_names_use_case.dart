import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service.dart';

@injectable
class GetResourceNamesUseCase {
  final ViamAppResourceService _resourceService;

  const GetResourceNamesUseCase(this._resourceService);

  Future<List<ViamAppResourceName>> call(
    ViamAppResourceSubtypeFilter? subtype,
    ViamAppResourceNameFilter? name,
  ) =>
      _resourceService.getResourceNames(
        subtype: subtype,
        name: name,
      );
}
