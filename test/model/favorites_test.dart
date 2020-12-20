import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_sample/model/favorites.dart';

void main() {
  group('App Provider Tests', () {
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test('A item should be removed from list', () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}