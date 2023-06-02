import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';

part 'settings_page_state.freezed.dart';

@freezed
class SettingsPageState with _$SettingsPageState {
  const factory SettingsPageState.loading({ViamBoat? boat}) = SettingsPageStateLoading;

  const factory SettingsPageState.loaded({required ViamBoat? boat}) = SettingsPageStateLoaded;

  const factory SettingsPageState.reloadApp() = SettingsPageStateReloadApp;
}
