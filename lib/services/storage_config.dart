import 'package:expense_tracker/utilities/const.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

class StorageBase {
  final _box = Hive.box(mainDB);

  load(String key) {
    var data = _box.get(key);
    return data;
  }

  void save({required String key, required value}) {
    _box.put(key, value);
  }

  void clear(String key) {
    if (kDebugMode) {
      print("deleted $key");
    }
    _box.delete(key);
  }
}
