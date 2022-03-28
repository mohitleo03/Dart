/*
Question - find out duplicate elements
*/

import 'dart:io';

void main() {
  print("Enter the numbers with a gap of space in between");
  String? number = stdin.readLineSync();
  List<String> number1 = number.toString().split(" ");
  int count = 0;
  List<int> numbers = [];
  List<int> result = [];
  for (int i = 0; i < number1.length; i++) {
    numbers.add(int.parse(number1[i]));
  }
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        result.add(numbers[i]);
      }
    }
  }
  if (result.length == 0) {
    print("No duplicate numbers");
  } else {
    print("Duplicate numbers are $result");
  }
}
