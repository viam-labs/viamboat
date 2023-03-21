import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:viam_marine/app/domain/app_viam/store/app_viam_store.dart';
import 'package:viam_marine/app/utils/shared_preferences_keys.dart';

@Injectable(as: AppViamStore)
class SharedPreferencesAppViamStore extends AppViamStore {
  final SharedPreferences _sharedPreferences;

  SharedPreferencesAppViamStore(this._sharedPreferences);

  @override
  String? getLocationId() => _sharedPreferences.getString(SharedPreferencesKeys.locationId);

  @override
  String? getOrganizationId() => _sharedPreferences.getString(SharedPreferencesKeys.organizationId);

  @override
  String? getRobotId() => _sharedPreferences.getString(SharedPreferencesKeys.robotId);

  @override
  Future<void> setLocationId(String locationId) => _sharedPreferences.setString(
        SharedPreferencesKeys.locationId,
        locationId,
      );

  @override
  Future<void> setOrganizationId(String organizationId) => _sharedPreferences.setString(
        SharedPreferencesKeys.organizationId,
        organizationId,
      );

  @override
  Future<void> setRobotId(String robotId) => _sharedPreferences.setString(
        SharedPreferencesKeys.robotId,
        robotId,
      );

  @override
  Future<void> clearAll() => _sharedPreferences.clear();
}
