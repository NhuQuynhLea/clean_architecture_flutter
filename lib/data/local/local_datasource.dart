
import 'dart:async';

abstract class LocalDatasource {
  FutureOr<bool> saveString(String key, String value);
  FutureOr<bool> remove (String key);
  FutureOr<String?> getString (String key);
}