import 'package:viam_marine/sdk/src/data/movement/data_source/movement_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_linear_velocity_response_to_viam_linear_velocity_mapper.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_position_response_to_viam_position_mapper.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/movementsensor/v1/movementsensor.pbgrpc.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_linear_velocity.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/domain/movement/service/movement_service.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';

class ViamMovementServiceImpl implements ViamMovementService {
  final ViamMovementDataSource _dataSource;
  final ViamResourceNameToResourceNameMapper _viamResourceNameToResourceNameMapper;
  final GetPositionResponseToViamPositionMapper _getPositionResponseToViamPositionMapper;
  final GetLinearVelocityResponseToViamVelocityMapper _getLinearVelocityResponseToViamVelocityMapper;

  const ViamMovementServiceImpl(
    this._dataSource,
    this._viamResourceNameToResourceNameMapper,
    this._getPositionResponseToViamPositionMapper,
    this._getLinearVelocityResponseToViamVelocityMapper,
  );

  @override
  Future<ViamPosition> getPositionData(ViamResourceName name) async {
    final resourceNameDto = _viamResourceNameToResourceNameMapper(name);
    final result = await _dataSource.getPositionData(resourceNameDto);
    return _getPositionResponseToViamPositionMapper(result);
  }

  @override
  Future<ViamLinearVelocity> getLinearVelocity(ViamResourceName name) async {
    final ResourceName resourceNameDto = _viamResourceNameToResourceNameMapper(name);

    final GetLinearVelocityResponse dto = await _dataSource.getLinearVelocity(resourceNameDto);

    return _getLinearVelocityResponseToViamVelocityMapper(dto);
  }
}
