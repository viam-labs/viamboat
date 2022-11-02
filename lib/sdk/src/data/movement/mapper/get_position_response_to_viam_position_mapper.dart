import 'package:viam_marine/sdk/src/data/viam/movementsensor/v1/movementsensor.pbgrpc.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';

class GetPositionResponseToViamPositionMapper {
  ViamPosition call(GetPositionResponse dto) => ViamPosition(
        dto.altitudeMm,
        dto.coordinate.latitude,
        dto.coordinate.longitude,
      );
}
