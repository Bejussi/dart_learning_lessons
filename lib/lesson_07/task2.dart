// 4. В методі main cтворіть новий Set зі спільними іменами обох списків
//(names_deepseek та names_gpt). Виведіть кількість елементів у цій множині.
// 5. Створіть множину з іменами, що є в `ukrainianNamesGPT`, але яких немає
//в `ukrainianNamesDeepseek`. Виведіть ці імена.
// 6. Створіть множину з іменами, що є в `ukrainianNamesDeepseek`, але яких
//немає в `ukrainianNamesGPT`. Виведіть ці імена.

import 'package:dart_learning_lessons/lesson_07/utilss/names_deepseek.dart';
import 'package:dart_learning_lessons/lesson_07/utilss/names_gpt.dart';

void main() {
  final names = ukrainianNamesDeepseek.intersection(ukrainianNamesGPT);
  print('Names length: ${names.length}');

  final uniqueNamesGPT = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);
  print('UniqueGptNames: $uniqueNamesGPT');

  final uniqueNamesDeepseek = ukrainianNamesDeepseek.difference(
    ukrainianNamesGPT,
  );
  print('UniqueDeepseekNames: $uniqueNamesDeepseek');
}
