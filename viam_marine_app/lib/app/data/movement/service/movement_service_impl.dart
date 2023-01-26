import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/movement/data_source/movement_sdk_data_source.dart';
import 'package:viam_marine/app/data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart';
import 'package:viam_marine/app/data/movement/mapper/viam_position_to_viam_app_position_mapper.dart';
import 'package:viam_marine/app/data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/app/domain/movement/service/movement_service.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@Injectable(as: ViamAppMovementService)
class ViamAppMovementServiceImpl implements ViamAppMovementService {
  final ViamAppMovementSdkDataSource _dataSource;
  final ViamAppResourceNameToViamResourceNameMapper _viamAppResourceNameToViamResourceNameMapper;
  final ViamPositionToViamAppPositionMapper _viamPositionToViamAppPositionMapper;
  final ViamLinearVelocityToViamAppLinearVelocityMapper _viamLinearVelocityToViamAppLinearVelocityMapper;

  ViamAppMovementServiceImpl(
    this._dataSource,
    this._viamAppResourceNameToViamResourceNameMapper,
    this._viamPositionToViamAppPositionMapper,
    this._viamLinearVelocityToViamAppLinearVelocityMapper,
  );

  @override
  Future<ViamAppPosition> getPosition(ViamAppResourceName resourceName) async {
    final resourceNameDto = _viamAppResourceNameToViamResourceNameMapper(resourceName);
    final result = await _dataSource.getPosition(resourceNameDto);
    return _viamPositionToViamAppPositionMapper(result);
  }

  @override
  Future<ViamAppLinearVelocity> getLinearVelocity(ViamAppResourceName resourceName) async {
    final ViamResourceName resourceNameDto = _viamAppResourceNameToViamResourceNameMapper(resourceName);
    final ViamLinearVelocity dto = await _dataSource.getLinearVelocity(resourceNameDto);

    return _viamLinearVelocityToViamAppLinearVelocityMapper(dto);
  }
}
