import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart';
import 'package:viam_marine/presentation/page/splash/cubit/splash_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class SplashCubit extends ViamCubit<SplashState> {
  final CheckIfHasTokenAndRefreshTokenUseCase _checkIfHasTokenAndRefreshTokenUseCase;

  SplashCubit(
    this._checkIfHasTokenAndRefreshTokenUseCase,
  ) : super(const SplashState.loading());

  Future<void> init() async {
    try {
      final bool hasTokens = await _checkIfHasTokenAndRefreshTokenUseCase();

      if (hasTokens) {
        emit(const SplashState.goToSelectRobot());
      } else {
        emit(const SplashState.goToAddBoat());
      }
    } catch (error, st) {
      Fimber.e(
        'Error during init splash cubit',
        ex: error,
        stacktrace: st,
      );
      emit(const SplashState.goToAddBoat());
    }
  }
}
