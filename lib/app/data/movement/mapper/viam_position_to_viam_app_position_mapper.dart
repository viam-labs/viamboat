import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamPositionToViamAppPositionMapper {
  ViamAppPosition call(ViamPosition dto) => ViamAppPosition(
        dto.altitude,
        dto.latitude,
        dto.longitude,
      );
}
