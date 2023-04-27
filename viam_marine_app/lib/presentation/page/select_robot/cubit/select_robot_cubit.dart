import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_location_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_locations_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_organization_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_robot_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_robots_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/list_organizations_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/set_location_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/set_organization_id_use_case.dart';
import 'package:viam_marine/domain/app_viam/usecase/set_robot_id_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/add_new_boat_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_robot_address_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_state.dart';

@injectable
class SelectRobotCubit extends Cubit<SelectRobotState> {
  final GetOrganizationsListUseCase _getOrganizationsListUseCase;
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final GetOrganizationIdUseCase _getOrganizationIdUseCase;
  final SetOrganizationIdUseCase _setOrganizationIdUseCase;
  final SubscribeToTokenExpiredStreamUseCase _subscribeToTokenExpiredStreamUseCase;
  final GetLocationsUseCase _getLocationsUseCase;
  final GetRobotsUseCase _getRobotsUseCase;
  final AddNewBoatUseCase _addNewBoatUseCase;
  final GetBoatsUseCase _getBoatsUseCase;
  final GetRobotAddressUseCase _getRobotAddressUseCase;
  final SetRobotIdUseCase _setRobotIdUseCase;
  final SetLocationIdUseCase _setLocationIdUseCase;
  final GetRobotIdUseCase _getRobotIdUseCase;
  final GetLocationIdUseCase _getLocationIdUseCase;

  List<ViamAppOrganization> _organizations = [];
  String? _cachedOrganizationId;
  StreamSubscription<TokenExpiredEvent>? _tokenExpiredStreamSubscription;

  SelectRobotCubit(
    this._addNewBoatUseCase,
    this._connectToRobotUseCase,
    this._getBoatsUseCase,
    this._getLocationIdUseCase,
    this._getLocationsUseCase,
    this._getOrganizationIdUseCase,
    this._getOrganizationsListUseCase,
    this._getRobotAddressUseCase,
    this._getRobotIdUseCase,
    this._getRobotsUseCase,
    this._getTokenOrNullUseCase,
    this._organizations,
    this._setLocationIdUseCase,
    this._setOrganizationIdUseCase,
    this._setRobotIdUseCase,
    this._subscribeToTokenExpiredStreamUseCase,
  ) : super(const SelectRobotState.idle());
}
