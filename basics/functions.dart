void main() {
  // List<Function> list = Math();
  // print(list[0](100, 200));
  // Function sub = Math()[1];
  // print(sub(20, 10));
  Map<String, Function> map = Math(200);
  Function? fn = map["Addition"];
  if (fn != null) {
    int x = fn(10, 20);
    print(x);
  }
  int? y = map["Subtraction"]!(20, 30);
  print(y);
}

//Function returns function
Map<String, Function> Math(int c) {    //outer or wrapper function
  int a = 10;
  //add is a local function
  Function add = (int x, int y) {
    //anonymous function
    return x + y + a + c;
  };
  Function sub = (int x, int y) {
    return x - y + c - a;
  };
  return {
    "Addition": add,
    "Subtraction": sub
  }; //Math is a function that returns add function
}



// //Function returns function
// Map<String, Function> Math() {    //outer or wrapper function
//   int a = 10;
//   //add is a local function
//   Function add = (int x, int y) {
//     //anonymous function
//     return x + y;
//   };
//   Function sub = (int x, int y) {
//     return x - y;
//   };
//   return {
//     "Addition": add,
//     "Subtraction": sub
//   }; //Math is a function that returns add function
// }

// //Function returns function
// List<Function> Math() {
//   int a = 10;
//   //add is a local function
//   Function add = (int x, int y) {
//     //anonymous function
//     return x + y;
//   };
//   Function sub = (int x, int y) {
//     return x - y;
//   };
//   return [add, sub]; //Math is a function that returns add function
// }



// old code
/*void main() {
  int c = add(10, 20);
  print(c);
  Function Add = Math();
  int a = Add(1, 2);
  print(a);
}

//Simple way defination style TOP LEVEL FUNCTIONS
int add(int x, int y) {
  //scope till library (Dart file)
  return x + y;
}

//Function returns function
Function Math() {
  int a = 10;
  //add is a local function
  Function add = (int x, int y) {
    //anonymous function
    return x + y;
  };
  return add; //Math is a function that returns add function
}
*/