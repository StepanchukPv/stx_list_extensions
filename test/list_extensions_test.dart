import 'package:simple_list_extensions/stx_list_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('Reorder extension tests', () {
    final simpleList = [
      'subject',
      'pan',
      'interface',
      'analysis',
      'illustrate'
    ];

    test('Simple test', () {
      simpleList.reorder(0, 4);

      expect(simpleList[0], 'pan');
      expect(simpleList[4], 'subject');
    });

    test('Throw error test', () {
      expect(() => simpleList.reorder(0, 5), throwsRangeError);
    });
  });

  group('Replace where extension test', () {
    final simpleList = [1, 2, 3, 4, 5, 7];

    test('Replace where number is 5', () {
      final resultList = simpleList.replaceWhere(
        (number) => number == 5,
        (oldValue) => oldValue * 2,
      );

      final rightAnswer = [1, 2, 3, 4, 10, 7];

      for (int i = 0; i < rightAnswer.length; i++) {
        expect(resultList[i], rightAnswer[i]);
      }
    });
  });

  group('Where indexed extension test', () {
    final simpleList = [
      'subject',
      'pan',
      'interface',
      'analysis',
      'illustrate'
    ];

    test('Where items contains "s"', () {
      final response = simpleList
          .whereIndexed((index, element) => index > 2 && element.contains('s'))
          .toList();

      expect(response[0], 'analysis');
    });
  });

  group('Map indexed extension test', () {
    final mapList = [1, 2, 3, 4];
    final numbersList = [10, 20, 30, 40];

    test('Multiply mapList items by items from numberList with correspoi ', () {
      final response = mapList.mapIndexed((index, element) {
        return element * numbersList[index];
      }).toList();

      final rightAnswer = [10, 40, 90, 160];

      for (int i = 0; i < rightAnswer.length; i++) {
        expect(response[i], rightAnswer[i]);
      }
    });
  });
}
