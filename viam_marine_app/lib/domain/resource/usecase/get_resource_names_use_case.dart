import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/resource/service/resource_service.dart';

@injectable
class GetResourceNamesUseCase {
  final ViamAppResourceService _resourceService;

  const GetResourceNamesUseCase(this._resourceService);

  List<ViamAppResourceName> call() => _resourceService.getResourceNames();
}
