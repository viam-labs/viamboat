import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:viam_marine/domain/boat/store/current_boat_store.dart';
import 'package:viam_marine/utils/shared_preferences_keys.dart';

@Injectable(as: CurrentBoatStore)
class SharedPreferencesCurrentBoatStore extends CurrentBoatStore {
  final SharedPreferences _prefs;

  SharedPreferencesCurrentBoatStore(this._prefs);

  @override
  String? getCurrentBoatId() => _prefs.getString(SharedPreferencesKeys.currentBoatId);

  @override
  Future<void> setCurrentBoatId(String id) => _prefs.setString(
        SharedPreferencesKeys.currentBoatId,
        id,
      );

  @override
  Future<void> removeCurrentBoatId() => _prefs.remove(
        SharedPreferencesKeys.currentBoatId,
      );
}
