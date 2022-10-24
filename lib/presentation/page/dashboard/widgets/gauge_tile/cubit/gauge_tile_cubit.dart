import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/gauge_tile/cubit/gauge_tile_state.dart';

@injectable
class GaugeTileCubit extends Cubit<GaugeTileState> {
  GaugeTileCubit() : super(const GaugeTileState.idle());
}
