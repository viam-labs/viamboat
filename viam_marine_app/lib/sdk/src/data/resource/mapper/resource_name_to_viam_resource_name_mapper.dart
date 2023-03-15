import 'package:viam_marine/sdk/src/gen/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/data/resource/model/viam_resource_name.dart';

class ResourceNameToViamResourceNameMapper {
  ViamResourceName call(ResourceName dto) {
    return ViamResourceName(
      dto.namespace,
      dto.type,
      dto.subtype,
      dto.name,
    );
  }
}
