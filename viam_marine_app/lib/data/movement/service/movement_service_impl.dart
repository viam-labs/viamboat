import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/movement/data_source/movement_sdk_data_source.dart';
import 'package:viam_marine/data/movement/model/compass_heading_dto.dart';
import 'package:viam_marine/domain/movement/model/viam_app_compass_heading.dart';
import 'package:viam_marine/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_marine/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/domain/movement/service/movement_service.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';
import 'package:viam_sdk/viam_sdk.dart';

@Injectable(as: ViamAppMovementService)
class ViamAppMovementServiceImpl extends ServiceBase implements ViamAppMovementService {
  final ViamAppMovementSdkDataSource _dataSource;

  ViamAppMovementServiceImpl(
    super.tokenExpiredBroadcaster,
    this._dataSource,
  );

  @override
  Future<ViamAppPosition> getPosition(ViamAppResourceName resourceName) async {
    final ViamResourceName resourceNameDto = resourceName.toDto();

    final dto = await super<Position>(
      () => _dataSource.getPosition(resourceNameDto),
    );

    return dto.toDomain();
  }

  @override
  Future<ViamAppLinearVelocity> getLinearVelocity(ViamAppResourceName resourceName) async {
    final ViamResourceName resourceNameDto = resourceName.toDto();

    final dto = await super<Vector3>(
      () => _dataSource.getLinearVelocity(resourceNameDto),
    );

    return dto.toDomain();
  }

  @override
  Future<ViamAppCompassHeading> getCompassHeading(ViamAppResourceName resourceName) async {
    final ViamResourceName resourceNameDto = resourceName.toDto();

    final dto = await super<CompassHeadingDto>(
      () => _dataSource.getCompassHeading(resourceNameDto),
    );

    return dto.toDomain();
  }
}
