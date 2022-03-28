import 'dart:io';

void main(List<String> args) {
  String? temp = stdin.readLineSync();
  String first = temp.toString();
  List<String> list1 = first.split(" ");
  print(list1.length);    //q2
  String a = "";
  for (int i = 0; i < list1.length; i++) {
    //for (int i = 0; i < ((list1?.length) ?? 0); i++)       if we directly split the input
    a = a +
        list1[i][0].toUpperCase() +
        list1[i].substring(1).toLowerCase() +
        " ";
  }
  print(a);   //q1
  // List<String> result = [];
  // for (int i = 0; i < first.length; i++) {
  //   if (first.codeUnitAt(i) >= 65 && first.codeUnitAt(i) <= 90) {
  //     result.add(first[i].toLowerCase());
  //   } else if (first.codeUnitAt(i) >= 97 && first.codeUnitAt(i) <= 122) {
  //     result.add(first[i].toUpperCase());
  //   } else {
  //     result.add(first[i]);
  //   }
  // }
  // String final_result = result.join();
  // print(final_result);
  String? pal = stdin.readLineSync();   //q3
  pal = pal.toString();
  int c = 0;
  for (int a = 0; a < pal.length / 2; a++) {
    if (!(pal[a] == pal[pal.length - a - 1])) {
      print("$pal is not palindrome");
      c = 1;
      break;
    }
  }
  if (c == 0) {
    print("$pal is palindrome");    
  }
}
