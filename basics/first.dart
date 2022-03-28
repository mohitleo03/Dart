import 'dart:io';

void main() {
  int x = 100; //statically typed
  print("Value of x is $x");
  var y = 200; //type interference
  print("Value of y is $y");
  //y = "amit";   error
  var z; //Internally dynamic, If no value is assigned to variable then it will be treated as dynamic
  z = 300;
  //dynamic z = 300;                  //dynamic type variable
  print("Value of z is $z");
  print(z.runtimeType);
  z = "Mohit"; //dynamically changing the variable type
  print("Now value of z is $z");
  print(x.runtimeType);
  print(y.runtimeType);
  print(z.runtimeType);

  //Printing result of Expressions

  var sum = x + y;
  print("sum is $sum"); //directly shoiwing result via variable
  //or we can use expression
  print("difference is ${y - x}"); //using expression
  print("division is " + (y / x).toString());

  //printing via stdout
  stdout.writeln("printing");
  stdout.write("\n through stdout \n");
}
