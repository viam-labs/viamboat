import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ViamResourceNameToViamAppResourceNameMapper {
  ViamAppResourceName call(ViamResourceName dto) => ViamAppResourceName(
        dto.namespace,
        dto.type,
        dto.subtype,
        dto.name,
      );
}
