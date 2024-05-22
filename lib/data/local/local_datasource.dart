
import 'dart:async';

abstract class LocalDatasource {
  Future<bool> saveString(String key, String value);
  Future<bool> remove (String key);
  Future<String?> getString (String key);
}