void main() {
  task1();
  task2();
  task3();
  task4();
  task5();
  task6();
  task7();
  task8();
  task9();
  task10();
}

/// Завдання 1: Математичні оператори
/// Створіть змінні довжина і ширина прямокутника (ширина 18.4, висота 30.9)
///
/// Обчисліть площу і периметр прямокутника.
/// Виведіть площу і периметр.
/// Використайте оператор ~/ для обчислення скільки повних квадратів 1х1 вміщається у площу.
void task1() {
  print('--------- Task 1 ---------');

  final width = 18.4;
  final height = 30.9;

  final area = width * height;
  final perimeter = 2 * (height + width);

  print('Area of a rectangle = $area and perimeter = $perimeter');

  final squares = area ~/ 1;

  print('How many complete 1x1 squares fit into the area? $squares');
}

/// Завдання 2: Оператори порівняння
/// Створіть змінну number.
///
/// Перевірте:
/// Чи більше число за 50.
/// Чи менше число за 100.
/// Чи ділиться число на 5 без залишку.
/// Виведіть всі результати.
void task2() {
  print('--------- Task 2 ---------');

  final number = 77;

  print('Is the number greater than 50? ${number > 50}');
  print('Is the number less than 100? ${number < 100}');
  print(
    'Is the number divisible by 5 without a remainder? ${(number % 5) == 0}',
  );
}

/// Завдання 3: Логічні оператори
/// Створіть змінні hasMoney і isStoreOpen (типу bool).
///
/// Перевірте:
/// Чи можна зробити покупку (якщо є гроші і магазин відкритий).
/// Чи потрібно почекати (якщо магазин закритий або немає грошей).
/// Використайте оператори &&, ||, !.
void task3() {
  print('--------- Task 3 ---------');

  final hasMoney = false;
  final isStoreOpen = true;

  final purchaseOpportunity = isStoreOpen && hasMoney;
  final shouldWait = !isStoreOpen || !hasMoney;

  print('Can I make a purchase? $purchaseOpportunity');
  print('Do I have to wait? $shouldWait');
}

/// Завдання 4: Тернарний оператор
/// Створіть змінну temperature.
///
/// Використайте тернарний оператор, щоб визначити:
/// Якщо більше 25 — “Тепло”.
/// Якщо менше або дорівнює 25 — “Прохолодно”.
/// Потім створіть ще один тернарний оператор:
/// Якщо менше 10 — вивести “Дуже холодно”.

void task4() {
  print('--------- Task 4 ---------');

  final temperature = 7.7;

  final result = temperature < 10
      ? 'Дуже холодно'
      : (temperature > 25 ? 'Тепло' : 'Прохолодно');

  print('How does the weather feel outside? $result');
}

/// Завдання 5: Оператори присвоєння
/// Використовувати тільки оператори присвоєння (+=, -=, *=, /=)
///
/// Створіть змінну score = 0.
/// Створіть зміни з даними:
/// correctAnswers = 17;
/// mistakes = 3;
/// totalQuestions = 20;
///
/// Додайте 10 балів за кожну правильну відповідь.
/// Відніміть 5 балів за кожну помилку.
///
/// Збільшіть загальну кількість балів у 2 рази.
/// Поділіть бали на кількість запитань.
/// Виведіть остаточний результат.

void task5() {
  print('--------- Task 5 ---------');

  var score = 0;

  final correctAnswers = 17;
  final mistakes = 3;
  final totalQuestions = 20;

  score += 10 * correctAnswers;
  score -= mistakes * 5;
  score *= 2;
  score ~/= totalQuestions;

  print('Score = $score');
}

/// Завдання 6: Умовні конструкції if/else
/// Створіть змінну examScore з значенням 56
/// Створіть умовні конструкції if / else if / else
/// Якщо більше 90 — вивести “Відмінно”.
///
/// Якщо 75–90 — “Добре”.
/// Якщо 60–74 — “Задовільно”.
/// Якщо менше 60 — “Не здано”.
///
/// Додатково: якщо оцінка менше 20 — вивести “Повторити курс”.
/// Поексперементуйте, змінюючи  значення examScore

void task6() {
  print('--------- Task 6 ---------');
  final examScore = 56;

  if (examScore > 90) {
    print('Відмінно');
  } else if (examScore >= 75) {
    print('Добре');
  } else if (examScore >= 60) {
    print('Задовільно');
  } else {
    print('Не здано');
  }

  if (examScore < 20) {
    print('Повторити курс');
  }
}

/// Завдання 7: Конструкція switch statement
/// Створіть змінну dayNumber від 1 до 7.
///
/// Використайте switch, щоб вивести:
/// Понеділок, Вівторок, …, Неділя.
/// Якщо день не від 1 до 7 — вивести “Невірний номер дня”.
/// Додатково: для вихідних (6, 7) вивести “Вихідний день 🎉”.

void task7() {
  print('--------- Task 7 ---------');

  final dayNumber = 6;

  switch (dayNumber) {
    case 1:
      print('Понеділок');
    case 2:
      print('Вівторок');
    case 3:
      print('Середа');
    case 4:
      print('Четверг');
    case 5:
      print("П'ятниця");
    case 6:
      print('Субота');
      print('Вихідний день 🎉');
    case 7:
      print('Неділя');
      print('Вихідний день 🎉');
    default:
      print('Невірний номер дня');
  }
}

/// Завдання 8: Цикли for
/// Виведіть всі числа від 1 до 10.
/// Виведіть тільки парні числа.
/// Обчисліть суму чисел від 1 до 10.

void task8() {
  print('--------- Task 8 ---------');

  print('All numbers:');
  for (var i = 1; i <= 10; i++) {
    print('Number: $i');
  }

  print('Even numbers:');
  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print('Number: $i');
    }
  }

  var sum = 0;
  for (var i = 1; i <= 10; i++) {
    sum += i;
  }

  print('Sum 1..10: $sum');
}

/// Завдання 9: Цикл while
/// Почніть із числа 10.
///
/// Виводьте числа, зменшуючи їх на 1, поки не досягнете 0.
/// Якщо число парне — вивести “Парне число: …”,
/// якщо непарне — “Непарне число: …”.

void task9() {
  print('--------- Task 9 ---------');

  var counter = 10;

  while (counter >= 0) {
    counter % 2 == 0
        ? print('Even number: $counter')
        : print('Odd number: $counter');
    counter--;
  }
}

/// Завдання 10: Break і Continue
/// Створіть цикл for від 1 до 20.
///
/// Якщо число ділиться на 3 без залишку — пропустіть його (continue).
/// Якщо число більше 15 — зупиніть цикл (break).
/// Виведіть тільки ті числа, які пройшли обидві перевірки.
void task10() {
  print('--------- Task 10 ---------');
  print('Numbers that passed both checks:');

  for (var i = 1; i <= 20; i++) {
    if (i % 3 == 0) continue;
    if (i > 15) break;
    print(i);
  }
}
