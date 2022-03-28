void main(List<String> args) {
  //print("arguments are $args");
  int sum = 0;
  for (int i = 0; i < args.length; i++) {
    sum += int.parse(args[i]);
    //sum += args[i].toInt();   any single item of args is not an object, only args is an object so we can't use .toInt()
  }
  print("Sum is $sum");
}
