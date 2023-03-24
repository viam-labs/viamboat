import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/domain/app_viam/usecase/get_organization_id_use_case.dart';
import 'package:viam_marine/app/domain/app_viam/usecase/list_organizations_use_case.dart';
import 'package:viam_marine/app/domain/app_viam/usecase/set_organization_id_use_case.dart';
import 'package:viam_marine/app/domain/clear_cache/use_case/clear_cache_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/logout_use_case.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class OrganizationsCubit extends ViamCubit<OrganizationsState> {
  final GetOrganizationsListUseCase _getOrganizationsListUseCase;
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final GetOrganizationIdUseCase _getOrganizationIdUseCase;
  final SetOrganizationIdUseCase _setOrganizationIdUseCase;
  final ClearCacheUseCase _clearCacheUseCase;
  final LogoutUseCase _logoutUseCase;

  List<ViamAppOrganization> _organizations = [];
  String? _cachedOrganizationId;

  OrganizationsCubit(
    this._getOrganizationsListUseCase,
    this._connectToRobotUseCase,
    this._getTokenOrNullUseCase,
    this._getOrganizationIdUseCase,
    this._setOrganizationIdUseCase,
    this._clearCacheUseCase,
    this._logoutUseCase,
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

    _organizations = await _getOrganizationsListUseCase();
    _cachedOrganizationId = _getOrganizationIdUseCase();

    if (_isOrganizationIdInCacheAndInList()) {
      emit(OrganizationsState.goToLocationsPage(_cachedOrganizationId!));
    }

    emit(OrganizationsState.loaded(_organizations));
  }

  Future<void> logout() async {
    try {
      emit(const OrganizationsState.loading());
      await _logoutUseCase(
        authDomain: 'auth.viam.com',
        clientId: 'JSKrM2T8HrdIy2WMGEg9oluEyYemdY8T',
        scheme: 'viamboat',
      );
      await _clearCacheUseCase();
      emit(const OrganizationsState.logout());
    } catch (error, st) {
      Fimber.e(
        'Error during logout',
        ex: error,
        stacktrace: st,
      );

      emit(const OrganizationsState.error());
      emit(OrganizationsState.loaded(_organizations));
    }
  }

  Future<void> onTap(ViamAppOrganization organization) async {
    emit(const OrganizationsState.loading());

    await _setOrganizationIdUseCase(organization.id);

    emit(OrganizationsState.goToLocationsPage(organization.id));
    emit(OrganizationsState.loaded(_organizations));
  }

  bool _isOrganizationIdInCacheAndInList() =>
      _cachedOrganizationId != null && _organizations.any((organization) => organization.id == _cachedOrganizationId);
}
