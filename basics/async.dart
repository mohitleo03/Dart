//How Async Work
asyncTask() {
  print("I am the first line");
  Future.delayed(Duration(seconds: 5), () {
    print("I will call after 5 sec");
    return 100; // waste becuse no one is to accept this return
  });
  // while (true) {     //even after 5 seconds it won't execute the future event because after 5 seconds
  //   print("I am infinity");        //the future event is in event queue & waiting for it' execution
  // }                                //which is not possible becuase the event loop is busy with this infinite loop
  // int f = Future.delayed(Duration(5)(){  //wrong 
  //   retrun 1000;
  // });
  print("I am the last line");
}

void main() {
  asyncTask();
  print("bye bye main");
}
