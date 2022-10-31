import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final ResourceService _resourceService;

  DashboardCubit(
    this._resourceService,
  ) : super(const DashboardState.idle());

  Future<void> init() async {
    try {
      final resource = await _resourceService.getResourceNames(
        subtype: ViamAppResourceSubtypeFilter.sensor,
        name: ViamAppResourceNameFilter.fluid,
      );
      emit(DashboardState.loaded(resource));
    } catch (error) {
      //TODO: it will be removed
      //ignore: unused_local_variable
      final e = error;
    }
  }
}
