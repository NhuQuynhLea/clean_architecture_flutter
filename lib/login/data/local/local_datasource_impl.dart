import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

import 'local_datasource.dart';

class LocalDataSourceImpl extends LocalDatasource {
  final SharedPreferences _sharedPreferences;

  LocalDataSourceImpl(this._sharedPreferences);

  @override
  Future<String?> getString(String key) async {
    return _sharedPreferences.getString(key);
  }

  @override
  Future<bool> remove(String key) {
    return _sharedPreferences.remove(key);
  }

  @override
  Future<bool> saveString(String key, String value) {
    return _sharedPreferences.setString(key, value);
  }
}
