import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/example/domain/example_feature/usecase/get_example_feature_data.dart';
import 'package:viam_marine/example/presentation/page/example_page/cubit/example_state.dart';

@injectable
class ExampleCubit extends Cubit<ExampleState> {
  //ignore: unused_field
  final GetExampleFeatureDataUseCase _getExampleFeatureDataUseCase;

  ExampleCubit(
    this._getExampleFeatureDataUseCase,
  ) : super(const ExampleState.idle());

  void init() {
    emit(const ExampleState.loading());
    emit(const ExampleState.loaded());
  }
}
