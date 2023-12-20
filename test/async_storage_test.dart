import 'package:flutter_test/flutter_test.dart';

import 'package:async_storage/async_storage.dart';

void main() {
  group('AsyncStorage', () {
    test('setItem and getItem', () async {
      // Arrange
      const key = 'testKey';
      const value = 'testValue';

      // Act
      await AsyncStorage.setItem(key, value);
      final retrievedValue = await AsyncStorage.getItem(key);

      // Assert
      expect(retrievedValue, equals(value));
    });
  });
}
