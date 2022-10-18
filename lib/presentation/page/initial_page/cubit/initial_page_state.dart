import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_page_state.freezed.dart';

@freezed
class InitialPageState with _$InitialPageState {
  const factory InitialPageState.loaded() = InitialPageStateLoaded;
}
