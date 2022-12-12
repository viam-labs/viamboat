import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_state.dart';

@injectable
class ViamDrawerCubit extends Cubit<ViamDrawerState> {
  final BoatService _boatService;

  ViamDrawerCubit(this._boatService) : super(const ViamDrawerState.loading());

  Future<void> init() async {
    final boats = await _boatService.getBoats();

    emit(ViamDrawerState.loaded(boats: boats));
  }
}
