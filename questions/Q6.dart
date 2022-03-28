/*
Question - find whether the given strings are anagram or not
example - 
input - silent, listen
Output - yes the given strings are anagram
anagram are those string in whcih the characters used are same but the ordering is different
*/
import 'dart:io';

void main() {
  String? first = stdin.readLineSync();
  first = first.toString();
  String? second = stdin.readLineSync();
  second = second.toString();
  int count = 0;
  List<String> First = first.split("");
  List<String> Second = second.split("");
  if (first.length == second.length) {
    for (int i = 0; i < first.length; i++) {
      for (int j = 0; j < second.length; j++) {
        if (First[i] == Second[j]) {
          count++;
        }
      }
    }
    if (count == First.length) {
      print("string anagram");
    }
    else if (count != First.length) {
    print("these 2 strings are not anagram");
  } 
  } else {
    print("these 2 strings are not anagram");
  }
}
