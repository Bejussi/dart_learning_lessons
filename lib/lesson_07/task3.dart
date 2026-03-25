// 2. Створіть список `randomNouns` з 100 різними словами  (як це зробити,
//подивіться в документації  до пакету)
// 3. Із `randomNouns` створіть Map<String, int> `nounsMap`, де:
//     - ключ — слово;
//     - значення — кількість символів у цьому слові.
// 4. Створіть нову змінну Map<String, int> `nounsMapFiltered`.
// 5. Додайте у `nounsMapFiltered` лише ті пари зі `nounsMap`,
//де довжина слова — парне число.
// 6. Виведіть всі ключі зі `nounsMapFiltered`.
import 'package:mocky/mocky.dart';

void main() {
  final randomNouns = Mocky.words(100);
  print('randomNouns : $randomNouns');

  final nounsMap = {for (final element in randomNouns) element: element.length};
  print('nounsMap : $nounsMap');

  final nounsMapFiltered = Map.fromEntries(
    nounsMap.entries.where((entry) => entry.value.isEven),
  );
  print('Keys: ${nounsMapFiltered.keys}');
}
