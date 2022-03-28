void main() {
  String fname = "Mohit"; //String literal,  can use double quotes
  String lname = 'Malik'; //can use single quotes
  String msg = 'hello, ' //Adjacent string
      'how' //can use single quotes for combining multiple strings in differnt lines, for long strings
      'are'
      'you?';
  int age = 21;
  print(msg);
  String multi = """this is an example    
  of multi line
  string"""; //multi line string
  print(multi);
  String z = "Mr." +
      fname +
      lname +
      "Age is $age"; // we can't add an integer to string directly we have to do string interpolation or conversion
  print(z);
  print(z[0]);
  print("A".codeUnits);
  print("ABCD".codeUnits);
  print("ABCD".codeUnitAt(2));
  print(fname is String);

  //methods of String

  print(fname.startsWith("m"));
  print(lname.endsWith("ik"));
  print(fname.contains("o"));
  print(fname.indexOf("ohi"));
  print(fname.substring(2, 4));
  print("100/20,Om Nagar,Khandsa Road,Gurgaon,Haryana".split(","));
  print(fname.toUpperCase());
  print(lname.toLowerCase());
  print("      Mohit       Malik      ".trim());
  print("      Mohit       Malik      ".trimLeft());
  print("      Mohit       Malik      ".trimRight());
  print(fname.padLeft(10));
  print(lname.padRight(10));

  //properties of string
  print(fname.length);
  print(lname.isEmpty);
  print(lname.isNotEmpty);
  print(fname.runes);
}
