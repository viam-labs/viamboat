import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';

part 'organizations_state.freezed.dart';

@freezed
class OrganizationsState with _$OrganizationsState {
  const factory OrganizationsState.loading() = OrganizationsStateLoading;

  const factory OrganizationsState.loaded(
    List<ViamAppOrganization> organizations,
  ) = OrganizationsStateLoaded;

  const factory OrganizationsState.goToLocationsPage(String organizationId) = OrganizationsStateGoToLocationsPage;
}
