import 'dart:io';

void main() {
  List<int> prices = [100, 200, 300, 40, 90, 10];

  //Properties of list
  print(prices.length);
  print(prices.isEmpty);
  print(prices.reversed);
  print(prices.first);
  print(prices.last);

  //functions of list

  prices.add(888); //will add in the end
  prices.insert(1, 777); //will add this value at given index
  print(prices);
  print(prices.remove(10)); //finds the element & remove it
  print(prices.removeAt(1)); //remove element at that index
  print(prices.removeLast()); //removes last element
  print(prices);
  prices.removeRange(
      1, 3); //removes element from a starting index to ending index
  prices.removeWhere((int price) =>
      price >= 100); //removes element where our condition matches
  print(prices
      .indexOf(91)); //returns index of this element if not found returns -1
  prices[0] = 888; //random access of list elements
  print(prices[0]);
  prices.elementAt(0); //returns elemet at this index
  print(prices);
  prices.forEach((element) {
    print("element is $element");
  }); //iterarte the list don't return it
  print(prices.contains(200)
      ? "Found"
      : "Not Found"); //checks whether the list contain this element or not
  prices.skipWhile((value) => value > 20).forEach((element) {
    print(element);
  });
  prices.takeWhile((value) => value > 20).forEach((element) {
    print(element);
  });
  print(prices.every((int price) =>
      price >=
      10)); //tells that each element passes the condition or not by returning bool
  print(prices.any((int price) => price > 9999));
  String res = prices.join("=>"); //join returns string
  print(
      res); //in place of , it will join 2 elements with this pattern given by us
  prices.map((int price) => price + price).forEach((int price) =>
      print("New Price is $price")); //get modified list based on logic
  prices.fold(0, (int previousValue, int element) {
    print("previous value is $previousValue ");
    print("element $element");
    return previousValue + element;
  }); //get sum of list
  prices.where((int price) => price > 50).forEach((int price) {
    print(price);
  }); //returns wherever the condition satisfies
  int element = prices.firstWhere((int price) => price > 50);
  print(element); //returns the element where our condition matches first
  int sum = prices.fold(0, (int sum, int element) => sum + element);
  print(sum); //returns the sum of list
  prices.sort((int first, int second) => first < second
      ? -1
      : 1); //ascending order or use first - second same result
  print(prices);
  prices.sort(
      (int first, int second) => second.compareTo(first)); //descending order
  print(prices);
  List<String> names = ["Mohit", "Namit", "Manish"];
  names
      .sort((String a, String b) => a.compareTo(b)); //sorting of list of string
  print(names);
  List<String> rev = names.reversed.toList(); //getting reversed list
  print(rev);
  List<int> sublist1 =
      prices.sublist(1); //getting part of list from a starting point to end
  print(sublist1);
  List<int> sublist2 = prices.sublist(
      1, 4); //getting part of list fromm a starting point & end point
  print(sublist2);
  prices.skip(2).forEach((element) {
    print("element is $element");
  }); //starts iterarting the list after skipping this much indexes
  Iterable<int> itr = prices.skip(3); //skip returns iterable
  Iterator iterator = itr.iterator; //iterable has a property iterator
  while (iterator.moveNext()) {
    //tells that we have next element or not
    print(iterator.current); //gives the current element
  }
  prices.clear(); //empty the list
  print(prices);
}
