/*
Enter a String 
Input - hELLo hOw arE YOu
Output - Hello How Are You
*/
import 'dart:io';

void main(List<String> args) {

  // BY stdin.readLineSync()
  String? t = stdin.readLineSync();
  List<String> text = t!.split(" ");
  for (int i = 0; i < text.length; i++) {
    stdout.writeln(text[i][0].toUpperCase() + text[i].substring(1, text[i].length).toLowerCase() +" ");
  }


  //BY COMMAND LINE ARGUMENT
  for (int i = 0; i < args.length; i++) {
    stdout.write(args[i][0].toUpperCase() + args[i].substring(1, args[i].length).toLowerCase() +" ");
  }


}