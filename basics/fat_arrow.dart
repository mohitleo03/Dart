void main() {
  //Function add = (int x, int y) => x + y; //fat arrow function
  //var add = (int x, int y) => x + y; // type interference
  final add = (x, y) => x + y;
  print(add(1, 2));
}
