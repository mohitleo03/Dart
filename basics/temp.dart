void main() {
  List<int> temp = [1, 2, 3, 4, 5];
  Iterable itr = temp.skip(1);
  Iterator i2 = itr.iterator;
  int i = 0;
  //while (i < 5) {
  while (i2.moveNext()) {
    print(i2.current);
    i++;
  }
  int sum = temp.fold(0, (sum, price) => sum + price);
  print(sum);
  temp.sort((int first, int second) => first > second ? -1 : 1);
  print(temp);
  int x = 1;
  int y;
  y = ++x + x;
  print("x is $x & y is $y");
}
