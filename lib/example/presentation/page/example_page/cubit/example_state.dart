import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_state.freezed.dart';

@freezed
class ExampleState with _$ExampleState {
  const factory ExampleState.idle() = ExampleStateIdle;

  const factory ExampleState.loading() = ExampleStateLoading;

  const factory ExampleState.loaded() = ExampleStateLoaded;

  const factory ExampleState.error([String? message]) = ExampleStateError;
}
