//How Async Work
asyncTask() {
  print("I am the first line");
  Future.delayed(Duration(seconds: 5), () {
    print("I will call after 5 sec");
    Future.delayed(Duration(seconds: 4), () {
      print("I will call after 4 sec");
      Future.delayed(Duration(seconds: 3), () {
        print("I will call after 3 sec");
        Future.delayed(Duration(seconds: 2), () {
          print("I will call after 2 sec");
          Future.delayed(Duration(seconds: 1), () {
            print("I will call after 1 sec");
            Future.delayed(Duration(seconds: 0), () {
              print("I will call after 0 sec");
            });
          });
        });
      });
    });
  });
  print("I am the last line");
}

void main() {
  asyncTask();
  print("bye bye main");
}
