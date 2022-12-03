import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/boat/current_boat.dart';
import 'package:viam_marine/app/presentation/page/sign_in/cubit/sign_in_state.dart';

final ad = 'camera-main.xl6oiexz3d.local.viam.cloud';
final p = '2824dhqonsdzjw09tphtlh7cvu1woushvvl4cofca4mviabh';

@injectable
class SignInCubit extends Cubit<SignInState> {
  final CurrentBoatService currentBoatService;

  SignInCubit(this.currentBoatService) : super(const SignInState.loaded());

  void setNewBoat() {
    currentBoatService.setCurrentBoat(ad, p);
    emit(const SignInState.goToDashboard());
  }
}
