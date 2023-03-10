import 'package:bloc/bloc.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/viam_connect_use_case.dart';
import 'package:viam_marine/app/presentation/page/splash/cubit/splash_state.dart';
import 'package:viam_marine/sdk/src/viam_sdk.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;
  final GetBoatsUseCase _getBoatsUseCase;
  final ViamConnectUseCase _viamConnectUseCase;

  SplashCubit(
    this._getCurrentBoatIdUseCase,
    this._getBoatsUseCase,
    this._viamConnectUseCase,
  ) : super(const SplashState.loading());

  Future<void> init() async {
    try {
      await Viam.instance().logout(
        'auth.viam.com',
        'JSKrM2T8HrdIy2WMGEg9oluEyYemdY8T',
        'https',
      );
      final currentBoatId = _getCurrentBoatIdUseCase();
      final boats = await _getBoatsUseCase();
      await Future.delayed(const Duration(seconds: 2));

      await _viamConnectUseCase(url: 'app.viam.com', port: 443, secure: true, disableWebRtc: true);

      if (currentBoatId != null && boats.isNotEmpty) {
        emit(const SplashState.goToMainPage());
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
