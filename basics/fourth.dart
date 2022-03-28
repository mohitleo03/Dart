void main() {
  int x;
  x = 1000000;
  print(x.runtimeType);
  print(x.runtimeType.runtimeType);

  //conversion via parse
  int g = int.parse("1000");
  int bin = int.parse("30", radix: 2);
  //hexadecimal conversion
  int hex = int.parse("16", radix: 16);
  //not working
  int deca = int.parse(hex.toString(), radix: 10);
  //int octa = int.parse(hex.toString(), radix: 8);
  //int octa2 = int.parse(deca.toRadixString(8));
  print(hex);
  print(deca);
  //print(octa);
  //print(octa2);
  print(hex.runtimeType);

  //converion through object functions
  String y = x.toString();
  print(y.runtimeType);
  print(y.runtimeType.runtimeType);

  double r = 10.20;
  print(r.runtimeType);
  print(r.runtimeType.runtimeType);

  double v = double.parse("1001.25");
  int q = r.toInt();
  print(q.runtimeType);
  print(q.runtimeType.runtimeType);

  bool finite = r.isFinite;
  print(finite);
}
