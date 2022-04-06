//How Async Work
asyncTask() {
  print("I am the first line");
  Future.delayed(Duration(seconds: 5), () {
    print("I will call after 5 sec");
  });
  // while (true) {     //even after 5 seconds it won't execute the future event because after 5 seconds
  //   print("I am infinity");        //the future event is in event queue & waiting for it' execution
  // }                                //which is not possible becuase the event loop is busy with this infinite loop
  print("I am the last line");
}

void main() {
  asyncTask();
  print("bye bye main");
}
