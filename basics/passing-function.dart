import 'dart:io';

void main() {
  int n;
  print("Enter the range");
  String? q = stdin.readLineSync();
  if (q != null) {
    n = int.parse(q);
    //loop(n, 1);
    loop(n,
        cube); //passing function in a function as an argument - callback function
    loop(n, square);
    loop(n, evenOdd);
  }
}

void loop(int n, Function fn) {
  for (int i = 1; i <= n; i++) print(fn(i));
}

// void loop(int n, int choice) {
//   for (int i = 1; i <= n; i++) {
//     if (choice == 1) {
//       print(cube(i));
//     } else if (choice == 2) {
//       print(square(i));
//     } else {
//       print(evenOdd(i));
//     }
//   }
// }

int cube(int num) {
  return num * num * num;
}

int square(int num) {
  return num * num;
}

String evenOdd(int num) {
  return num % 2 == 0 ? "Even $num" : "Odd $num";
}
