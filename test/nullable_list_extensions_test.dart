import 'package:stx_list_extensions/stx_list_extensions.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Is isNullOrEmpty tests', () {
    test('Simple case with empty list', () {
      final emptyList = [];

      expect(emptyList.isNullOrEmpty, true);
    });

    test('Simple case with null list', () {
      List? nullList;

      expect(nullList.isNullOrEmpty, true);
    });
  });

  group('Is isNullOrNotEmpty tests', () {
    test('Simple case with empty list', () {
      final emptyList = [];

      expect(emptyList.isNullOrNotEmpty, false);
    });

    test('Simple case with null list', () {
      List? nullList;

      expect(nullList.isNullOrEmpty, true);
    });
  });
}
