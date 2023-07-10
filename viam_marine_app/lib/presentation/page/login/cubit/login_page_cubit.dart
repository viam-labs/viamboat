import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/usecase/login_use_case.dart';
import 'package:viam_marine/presentation/page/login/cubit/login_page_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';
import 'package:viam_marine/utils/viam_constants.dart';

@injectable
class LoginPageCubit extends ViamCubit<LoginPageState> {
  static const _tag = 'LoginPageCubit';

  final LoginUseCase _loginUseCase;

  LoginPageCubit(this._loginUseCase) : super(const LoginPageState.loaded());

  Future<void> login() async {
    try {
      emit(const LoginPageState.loading());

      await _loginUseCase(
        audience: ViamConstants.audience,
        scheme: ViamConstants.scheme,
      );

      emit(const LoginPageState.loginSuccessful());
    } catch (error, st) {
      emit(const LoginPageState.error());
      emit(const LoginPageState.loaded());

      Fimber.e('$_tag: Error while login in', ex: error, stacktrace: st);
    }
  }
}
