import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';

class ViamResourceNameToResourceNameMapper {
  ResourceName call(ViamResourceName dto) {
    return ResourceName(
      namespace: dto.namespace,
      type: dto.type,
      subtype: dto.subtype,
      name: dto.name,
    );
  }
}
