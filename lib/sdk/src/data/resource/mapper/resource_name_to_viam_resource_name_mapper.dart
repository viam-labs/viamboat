import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';

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
