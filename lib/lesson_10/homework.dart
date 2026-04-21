import 'dart:async';

void main() async {
  await task1();
  await task2();
  await task3();
  await task4();
  await task5();
  await task6();
  await task7();
  await task8();
}

Future<void> task1() async {
  print('--------- Task 1 ---------');

  final name = await fetchName();
  print('Мене звати $name');
}

Future<void> task2() async {
  print('--------- Task 2 ---------');

  final age = await fetchAge();
  final ageText = parseAge(int.parse(age));

  print('Мені $age $ageText');
}

Future<void> task3() async {
  print('--------- Task 3 ---------');

  final stopwatch = Stopwatch()..start();

  final name = await fetchName();
  print('Мене звати $name');

  final age = await fetchAge();
  final ageText = parseAge(int.parse(age));
  print('Мені $age $ageText');

  stopwatch.stop();

  print('Час виконання: ${stopwatch.elapsedMilliseconds} ms');
}

Future<void> task4() async {
  print('--------- Task 4 ---------');

  final stopwatch = Stopwatch()..start();

  final results = await Future.wait([
    fetchName(),
    fetchAge(),
  ]);

  final name = results[0];
  final age = results[1];

  final ageText = parseAge(int.parse(age));

  print('Мене звати $name');
  print('Мені $age $ageText');

  stopwatch.stop();

  print('Час виконання: ${stopwatch.elapsedMilliseconds} ms');
}

Future<void> task5() async {
  print('--------- Task 5 ---------');

  final result = await delayedCountdown(3);

  print(result);
}

Future<void> task6() async {
  print('--------- Task 6 ---------');

  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  print('--- await for ---');
  await for (final value in stream) {
    print(value);
  }

  print('--- listen ---');
  final stream2 = Stream.fromIterable([1, 2, 3, 4, 5]);

  stream2.listen(print);
}

Future<void> task7() async {
  print('--------- Task 7 ---------');

  final stream = Stream.periodic(
    const Duration(seconds: 1),
    (count) => count + 1,
  ).take(10);

  await for (final value in stream) {
    print('$value...');
  }
}

Future<void> task8() async {
  print('--------- Task 8 ---------');

  final controller = StreamController<String>();

  controller.stream.listen(
    print,
    onDone: () {
      print('Стрім завершено');
    },
  );

  controller.add('Hello');
  controller.add('World');
  controller.add('Dart');

  await controller.close();
}

Future<String> fetchName() async {
  return Future.delayed(
    const Duration(seconds: 2),
    () => 'Oleksandra',
  );
}

Future<String> fetchAge() async {
  return Future.delayed(
    const Duration(milliseconds: 1500),
    () => '25',
  );
}

String parseAge(int age) {
  if (age % 10 == 1 && age % 100 != 11) {
    return 'рік';
  } else if ([2, 3, 4].contains(age % 10) &&
      ![12, 13, 14].contains(age % 100)) {
    return 'роки';
  } else {
    return 'років';
  }
}

Future<String> delayedCountdown(int seconds) async {
  for (var i = seconds; i > 0; i--) {
    print('$i...');
    await Future<void>.delayed(const Duration(seconds: 1));
  }

  return 'Старт!';
}
