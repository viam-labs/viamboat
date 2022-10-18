import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/initial_page/cubit/initial_page_state.dart';

@injectable
class InitialPageCubit extends Cubit<InitialPageState> {
  InitialPageCubit() : super(const InitialPageState.loaded());
}
