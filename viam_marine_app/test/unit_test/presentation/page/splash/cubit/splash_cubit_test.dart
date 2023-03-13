import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:viam_marine/app/domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart';
import 'package:viam_marine/app/presentation/page/splash/cubit/splash_cubit.dart';
import 'package:viam_marine/app/presentation/page/splash/cubit/splash_state.dart';

import 'splash_cubit_test.mocks.dart';

@GenerateMocks([CheckIfHasTokenAndRefreshTokenUseCase])
void main() {
  late SplashCubit splashCubit;
  late CheckIfHasTokenAndRefreshTokenUseCase checkIfHasTokenAndRefreshTokenUseCase;

  setUp(() {
    checkIfHasTokenAndRefreshTokenUseCase = MockCheckIfHasTokenAndRefreshTokenUseCase();

    splashCubit = SplashCubit(checkIfHasTokenAndRefreshTokenUseCase);
  });

  group('SplashCubit', () {
    //TODO: Add more tests
    test(
      'has initial loading state',
      () => expect(splashCubit.state, equals(const SplashState.loading())),
    );
  });
}
