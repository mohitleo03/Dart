import 'dart:io';

void main(List<String> args) {
  List<int> array = [1,2,3,4,5,1];
  //int n = stdin.readByteSync();
  // for (int i = 0; i < array.length; i++) {
  //   array.add(stdin.readByteSync());
  // }
  List<int> new_array = array.toSet().toList();
  if(new_array.length < array.length) {
    print("its having duplicate items");
  }
  else{
    print("its not having duplicate items");
  }
}
