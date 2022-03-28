import 'dart:io';

void main() {
  Set<int> set = {500, 499, 20, 30, 40, 10};
  var set2 = {10, 30, 20, 10, 60};
  set.add(50);
  set.forEach((element) {
    print(element);
  });
  Set<int> set3 = set.difference(set2);
  print("Set 1 - $set");
  print("Set 2 - $set2");
  print("Set 1 diff Set2 is $set3");
  Set<int> set4 = set.intersection(set2);
  Set<int> set5 = set.union(set2);
  print("Intersection $set4");
  print("Union $set5");
  print("skip while greater than 200");
  set.skipWhile((value) => value > 200).forEach((element) {
    stdout.write("$element ");
  });
  print(" ");
  print("take while greater than 200");
  set.takeWhile((value) => value > 200).forEach((element) {
    stdout.write("$element ");
  });
}
