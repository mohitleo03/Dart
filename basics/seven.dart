import 'dart:io';

void main() {

  // String filter = " select * from photos ";
  // filter = filter + " where location = 'Delhi' ";
  // filter = filter + " and size = '10mb' ";
  StringBuffer sb = new StringBuffer(); //allocate memory only once
  sb.write("select * from photos");
  sb.write("where location = 'Delhi'");
  sb.write("and size = '10mb'");
  String a = sb.toString(); //convert StringBuffer into String
  print(a);
  print(a.runtimeType);
  print(sb);
  print(sb.runtimeType);
  sb = new StringBuffer(); //old StringBuffer is gone
  sb.write("hello");
  String b = sb.toString();
  print(b);
  const int MAX = 10;
  //MAX++;    //error can't modify value of a constant
  final StringBuffer sb2 = new StringBuffer();
  //sb2 = new StringBuffer();   //error because it is constant
}
