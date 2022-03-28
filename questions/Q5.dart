/*
Question - find out the missing number in series of N natural numbers
*/

import 'dart:io';

void main() {
  print("Enter the numbers with a gap of space in between");
  String? number = stdin.readLineSync();
  number = number.toString();
  int count = 0;
  List<String> numbers = number.split(" ");
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length; j++) {
      if (j + 1 == int.parse(numbers[i])) {
        print("${int.parse(numbers[i])} is equal to ${j+1}");
        count++;
        print(count);
      }
    }
  }
  if (count == numbers.length) {
    print("No missing number");
  } else {
    print("Missing number");
  }
}

/*
for (int i = 0; i < numbers.length; i++) {

      if (i + 1 == int.parse(numbers[i])) {
        print("${int.parse(numbers[i])} is equal to ${i+1}");
        count++;
        print(count);
      
    }
  }
 */