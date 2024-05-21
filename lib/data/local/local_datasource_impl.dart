
import 'dart:async';

import 'package:clean_architecture_flutter/data/local/local_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSourceImpl extends LocalDatasource {
  final SharedPreferences _sharedPreferences;

  LocalDataSourceImpl(this._sharedPreferences);

  @override
  FutureOr<String?> getString(String key) {
    return _sharedPreferences.getString(key);
  }

  @override
  FutureOr<bool> remove(String key) {
    return _sharedPreferences.remove(key);
  }

  @override
  FutureOr<bool> saveString(String key, String value) {
    return _sharedPreferences.setString(key,value);
  }

}