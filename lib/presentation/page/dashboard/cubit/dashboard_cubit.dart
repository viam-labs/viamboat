import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final ResourceService _resourceService;

  DashboardCubit(
    this._resourceService,
  ) : super(const DashboardState.idle());

  Future<void> init() async {
    try {
      final resource = await _resourceService.getResourceNames(
        subtype: ResourceSubtypeFilters.sensor,
        name: ResourceNameFilters.fluid,
      );
      emit(DashboardState.loaded(resource));
    } catch (error) {
      //TODO: it will be removed
      //ignore: unused_local_variable
      final e = error;
    }
  }
}
