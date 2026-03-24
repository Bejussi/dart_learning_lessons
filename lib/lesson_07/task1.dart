// 2. Створіть список numbers зі 100 елементів. Кожен елемент — випадкове число
//від 0 до 100
// (використайте `Random().nextInt(101)`).
// 3. Виведіть цей список на екран.
// 4. Виведіть на екран 65-й елемент списку у форматі: "65-й елемент:
// [значення]".
// 5. Вставте число 1000000000 на 50-ту позицію списку.
// 6. Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
// 7. За допомогою циклу for переберіть список. Під час перебору:
//     - Порахуйте суму всіх елементів, що діляться на 3 без залишку.
//     - Виведіть результат.
// 8. Створіть порожній список temp. За допомогою циклу for-in переберіть
// numbers.
// Додайте до temp лише ті елементи, що діляться на 2 без залишку.
// 9. Виведіть довжину списку temp.
import 'dart:math';

void main() {
  final numbers = List.generate(100, (index) => Random().nextInt(101));
  print('List: ${numbers.join(',')}');
  print('65th element: [value]: ${numbers[64]}');

  numbers.insert(49, 1000000000);
  print('50th element: [value]: ${numbers[49]}');

  numbers.removeWhere((item) => [24, 45, 66, 88].contains(item));
  print('Updated List: ${numbers.join(',')}');

  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
    }
  }
  print('Sum = $sum');

  final temp = <int>[];
  for (final number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  print('temp lenght: ${temp.length}');
}
