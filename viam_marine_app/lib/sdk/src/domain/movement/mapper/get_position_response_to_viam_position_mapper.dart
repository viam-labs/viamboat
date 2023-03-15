import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/gen/component/movementsensor/v1/movementsensor.pb.dart';

class GetPositionResponseToViamPositionMapper {
  ViamPosition call(GetPositionResponse dto) => ViamPosition(
        dto.altitudeMm,
        dto.coordinate.latitude,
        dto.coordinate.longitude,
      );
}
