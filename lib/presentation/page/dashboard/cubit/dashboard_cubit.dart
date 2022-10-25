import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState.idle());

  Future<void> init() async {
    try {
      emit(const DashboardState.loading());
      emit(
        DashboardState.loaded(sensors: List.filled(6, '')),
      );
    } catch (error) {
      //TODO: it will be removed
      //ignore: unused_local_variable
      final e = error;
    }
  }
}
