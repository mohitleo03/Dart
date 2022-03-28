/*
Check Palindrome 
Input - nitin
output - It's a palindrome string
*/
import 'dart:io';

void main(List<String> args) {
  String? text = stdin.readLineSync();
  List<String> t = text!.split("");
  int not_palindrome = 0;
  for (int i = 0; i < t.length; i++) {
    if (!(t[i] == t[t.length - i - 1])) {
      print("It's not Palindrome String");
      not_palindrome = 1;
      break;
    }
  }
  if (not_palindrome == 0) {
    print("It's Palindrome String");
  }
}