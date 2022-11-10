import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamAppResourceNameToViamResourceNameMapper {
  ViamResourceName call(ViamAppResourceName dto) => ViamResourceName(
        dto.namespace,
        dto.type,
        dto.subtype,
        dto.name,
      );
}
