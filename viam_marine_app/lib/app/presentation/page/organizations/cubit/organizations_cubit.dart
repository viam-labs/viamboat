import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/domain/app_viam/usecase/list_organizations_use_case.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_state.dart';

@injectable
class OrganizationsCubit extends Cubit<OrganizationsState> {
  final GetOrganizationsListUseCase _getOrganizationsListUseCase;

  OrganizationsCubit(this._getOrganizationsListUseCase) : super(const OrganizationsState.loading());

  Future<void> init() async {
    final List<ViamAppOrganization> organizations = await _getOrganizationsListUseCase();

    emit(OrganizationsState.loaded(organizations));
  }
}
