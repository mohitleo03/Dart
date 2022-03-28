/*
Find out total number of characters in a sentence
Input - hi how are you
Output - 4
*/
import 'dart:io';

void main(List<String> args) {
  // BY stdin.readLineSync()
  String? text = stdin.readLineSync();
  List<String> t = text!.split(" ");
  print(t.length);

  //BY COMMAND LINE ARGUMENT
  print(args.length);
}
