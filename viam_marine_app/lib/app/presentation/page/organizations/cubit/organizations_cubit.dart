import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app/model/viam_app_organization.dart';
import 'package:viam_marine/app/domain/app/usecase/list_organizations_use_case.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_state.dart';

@injectable
class OrganizationsCubit extends Cubit<OrganizationsState> {
  final ListOrganizationsUseCase _listOrganizationsUseCase;

  OrganizationsCubit(this._listOrganizationsUseCase) : super(const OrganizationsState.loading());

  Future<void> init() async {
    final List<ViamAppOrganization> organizations = await _listOrganizationsUseCase();

    emit(OrganizationsState.loaded(organizations));
  }
}
