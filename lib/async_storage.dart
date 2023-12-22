import 'dart:convert'; // Import the 'dart:convert' library
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AsyncStorage {
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static Future<void> setItem(String key, dynamic value) async {
    // Convert the value to a JSON string
    String jsonValue = jsonEncode(value);
    await _storage.write(key: key, value: jsonValue);
  }

  static Future<T?> getItem<T>(String key) async {
    // Retrieve the JSON string from storage
    String? jsonValue = await _storage.read(key: key);

    // If the value is null, return null
    if (jsonValue == null) return null;

    // Decode the JSON string to the specified data type
    T? value = jsonDecode(jsonValue);
    return value;
  }
}
