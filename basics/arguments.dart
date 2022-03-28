void main() {
  int result = add(y: 10, x: 20);
  print(result);
  print(add());
  print(add(y: 10));
  print(adder(second: 20, first: 10));
  print(adder(second: 20, first: 10, third: 30, fourth: 40));
}

int adder({required int first, required int second, int third = 0, int fourth = 0}) {
  return first + second + third + fourth;
}

int add({int x = 0, int y = 0}) {
  //optional named arguments
  return x + y;
}

// int add([int x = 0, int y = 0]) { //optional positional arguments
//   return x + y;
// }

// int add(int x , int y ) { // required positional arguments
//   return x + y;
// }