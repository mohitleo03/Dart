//How Async Work
asyncTask() {
  print("I am the first line");
  Future.delayed(Duration(seconds: 5), () {
    print("I will call after 5 sec");
  });
  print("I am the last line");
}

void main() {
  asyncTask();
  print("bye bye main");
}
