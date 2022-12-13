import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/presentation/page/splash/cubit/splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final BoatService boatService;

  SplashCubit(
    this.boatService,
  ) : super(const SplashState.loading());

  Future<void> init() async {
    try {
      final currentBoatId = boatService.getCurrentBoatId();
      final boats = await boatService.getBoats();

      if (currentBoatId != null && boats.isNotEmpty) {
        emit(const SplashState.goToDashboard());
      } else {
        emit(const SplashState.goToAddBoat());
      }
    } catch (_) {
      emit(const SplashState.goToAddBoat());
    }
  }
}
