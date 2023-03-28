import 'package:bloc/bloc.dart';

abstract class ViamCubit<State> extends BlocBase<State> {
  ViamCubit(super.state);

  @override
  void emit(State state) {
    if (!isClosed) {
      super.emit(state);
    }
  }
}
