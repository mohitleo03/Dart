Future<int> cube(int num) {
  return Future.value(num * num * num);
}

void main() {
  Future<int> future = cube(3);
  future
      .then((int value) => print("value is $value"))
      .catchError((err) => print("error is $err"));
}
