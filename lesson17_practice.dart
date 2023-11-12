import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  task_1_1and2();
  print(task_1_3());
  List<String> listOfWord = [
    "b",
    "k",
    "tk",
    "a",
    'a',
    "eqwert",
    'tko',
    "B",
    "qwer",
    "453",
    "12"
  ];
  task_1_4(listOfWord);
  task_1_5(listOfWord);
  task_1_6(listOfWord);
  task_1_7();
  task_1_8();
  //
  // task_2_1();
  // task_2_2();
  // task_2_3();
  // task_2_4();
  // task_2_5();
  // task_2_6();
}

void task_1_1and2() {
  print("task_1_1");
  List<int> array = List.generate(10, (index) => index++);

  array.forEach((element) {
    print(element);
  });

  print("task_1_2");

  array.forEach((element) {
    print(degree(element, 3));
  });
}

int task_1_3() {
  print("task_1_3");
  List<int> array = List.generate(10, (index) => index++);
  int summa = 0;
  array.reduce((value, element) => summa = value + element);
  return summa;
}

void task_1_4(List array) {
  array.sort();
  print(array);
}

void task_1_5(List array) {
  array.sort((a, b) => b.compareTo(a));
  print(array);
}

void task_1_6(List array) {
  array.sort((a, b) => a.length.compareTo(b.length));
  print(array);
}

void task_1_7() {
  print("task_1_7");
  List<int> array = List.generate(10, (index) => index++);

  var result = array.where((element) => element.isEven);
  print(result.toList());
}

void task_1_8() {
  print("task_1_8");
  List<int> array = List.generate(10, (index) => 1 + index++);
  int summa = 0;
  array[4] = 0;
  List result = [];
  for (int i = 0; i <= array.length; i++) {
    if (array[i] == 0) {
      break;
    } else {
      result.add(array[i]);
    }
  }
  result.reduce((value, element) => summa = value + element);

  print(summa);
}

void task_2_1() {
  print("task_2.1");

  for (int i = 1; i <= 5; i++) {
    stdout.write("$i,\t");
  }
  print("");
}

void task_2_2() {
  print("task_2.2");

  for (int i = 5; i >= 1; i--) {
    stdout.write("$i,\t");
  }
  print("");
}

void task_2_3() {
  print("task_2_3");

  for (int i = 1; i <= 10; i++) {
    print("3*$i=${3 * i}");
  }
}

void task_2_4() {
  print("task_2_4");
  int summa = 0;

  for (int i = 100; i <= 200; i++) {
    if (i % 17 == 0) {
      summa += i;
    }
  }
  print("summa=$summa");
}

void task_2_5() {
  print("task_2_5");
  int a = 1;
  int i = 1;

  while (a != 98) {
    a = 7 * i;
    stdout.write("$a,\t");
    i++;
  }
  print("");
}

void task_2_6() {
  print("task_2_6");
  int a = 2;
  int i = -1;

  do {
    i++;
    stdout.write("${degree(a, i)},\t");
  } while (degree(a, i) != 512);
  print("");
}

num degree(num number, num degreeOfNumber) {
  if (degreeOfNumber == 0) {
    return 1;
  } else {
    number *= degree(number, --degreeOfNumber);
  }

  return number;
}
