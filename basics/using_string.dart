import 'dart:io';

void main() {
  String? temp = stdin.readLineSync();
  //First solution
  String t = temp.toString();
  //second solution
  if (temp != null) {
    List<String> list = temp.split(
        ","); //if we check null then compiler will let us do string functionalities
  }
  //third solution
  List<String>? list2 = temp?.split(",");
}
