library async_storage;

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AsyncStorage {
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static Future<void> setItem(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  static Future<String?> getItem(String key) async {
    return await _storage.read(key: key);
  }
}
