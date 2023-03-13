import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/domain/app_viam/usecase/list_organizations_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_state.dart';

@injectable
class OrganizationsCubit extends Cubit<OrganizationsState> {
  final GetOrganizationsListUseCase _getOrganizationsListUseCase;
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;

  OrganizationsCubit(
    this._getOrganizationsListUseCase,
    this._connectToRobotUseCase,
    this._getTokenOrNullUseCase,
  ) : super(const OrganizationsState.loading());

  Future<void> init() async {
    final token = await _getTokenOrNullUseCase();
    await _connectToRobotUseCase(
      url: 'app.viam.com',
      disableWebRtc: true,
      port: 443,
      secure: true,
      accessToken: token,
    );

    final List<ViamAppOrganization> organizations = await _getOrganizationsListUseCase();

    emit(OrganizationsState.loaded(organizations));
  }
}
