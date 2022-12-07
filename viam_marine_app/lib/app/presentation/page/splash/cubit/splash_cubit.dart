import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/current_boat_service.dart';
import 'package:viam_marine/app/presentation/page/splash/cubit/splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final CurrentBoatService currentBoatService;

  SplashCubit(
    this.currentBoatService,
  ) : super(const SplashState.loading());

  Future<void> init() async {
    try {
      final currentBoat = await currentBoatService.getCurrentBoat();

      if (currentBoat != null) {
        emit(const SplashState.goToDashboard());
      } else {
        emit(const SplashState.goToAddBoat());
      }
    } catch (_) {
      emit(const SplashState.goToAddBoat());
    }
  }
}
