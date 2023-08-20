import 'package:stx_list_extensions/stx_list_extensions.dart';

void main() {
  final simpleList = [
    'subject',
    'pan',
    'interface',
    'analysis',
    'illustrate',
  ];

  // Reorder example
  simpleList.reorder(0, 4);
  printResult(actionName: 'Reorder', result: simpleList);

  // Replace where example
  final replaceWhereResult = simpleList.replaceWhere(
    (word) => word == 'pan',
    (_) => '######',
  );
  printResult(actionName: 'ReplaceWhere', result: replaceWhereResult);

  // IsNullOrEmpty example
  List<int>? numberList;

  // Instead of using if (numberList?.isEmpty ?? false)
  if (numberList.isNullOrEmpty) {
    printResult(
      actionName: 'IsNullOrEmpty',
      result: numberList,
      extra: '${numberList.isNullOrEmpty}',
    );
  }
}

void printResult({
  required String actionName,
  required List? result,
  String extra = '',
}) {
  final actionNameColored = '\x1B[32m$actionName\x1B[0m';
  final extraColor = '\x1B[37m$extra\x1B[0m';
  print(
    '$actionNameColored:$result ${extra.isNotEmpty ? 'Extra $extraColor' : ''}',
  );
  print('-' * 60);
}
