import 'dart:io';
import 'dart:math';
void main() {
  String Menu = """---------------Base Conversion Calculator---------------
            Conversion                        -  Press
  - Binary Number to Octal Number             -    1
  - Binary Number to Decimal Number           -    2
  - Binary Number to Hexadecimal Number       -    3
  - Octal Number to Binary Number             -    4
  - Octal Number to Decimal Number            -    5
  - Octal Number to Hexadecimal Number        -    6
  - Decimal Number to Binary Number           -    7
  - Decimal Number to Octal Number            -    8
  - Decimal Number to Hexadecimal Number      -    9
  - Hexadecimal Number to Binary Number       -    10
  - Hexadecimal Number to Octal Number        -    11
  - Hexadecimal Number to Decimal Number      -    12
  
  - Exit  -  0
  """;

  print(Menu);
  print("Enter Your Choice - ");
  int choice = int.parse(stdin.readLineSync().toString());
  while (choice != 0) {
    print("Enter the Number");
    String number = stdin.readLineSync().toString();
    Function? convert = BaseConverter(choice)![1];
    print_number(number, BaseConverter(choice)![0], convert);
    sleep(Duration(seconds: 3));
    print(Menu);
    print("Enter Your Choice - ");
    choice = int.parse(stdin.readLineSync().toString());
  }
}

List? BaseConverter(int choice) {
  int base;
  String BinToDec(String number) => ConvertbyBasePower(base = 2, number);
  
  String OctToDec(String number) => ConvertbyBasePower(base = 8, number);
  
  String DecToBin(String number) => ConvertbyModulo(base = 2, number);
  
  String DecToOct(String number) => ConvertbyModulo(base = 8, number);
  
  String DecToHex(String number) => ConvertbyModulo(base = 16, number);

  String HexToDec(String number) => ConvertbyBasePower(base = 16, number);

  String BinToOct(String number) => DecToOct(BinToDec(number));

  String BinToHex(String number) => DecToHex(BinToDec(number));

  String OctToBin(String number) => DecToBin(OctToDec(number));
  
  String OctToHex(String number) => DecToHex(OctToDec(number));
  
  String HexToBin(String number) => DecToBin(HexToDec(number));
  
  String HexToOct(String number) => DecToOct(HexToDec(number));
  

  //deciding & returning function
  switch (choice) {
    case 1:
      return ["Binary to Octal", BinToOct];
    case 2:
      return ["Binary to Decimal", BinToDec];
    case 3:
      return ["Binary to Hexadecimal", BinToHex];
    case 4:
      return ["Octal to Binary", OctToBin];
    case 5:
      return ["Octal to Decimal", OctToDec];
    case 6:
      return ["Octal to Hexadecimal", OctToHex];
    case 7:
      return ["Decimal to Binary", DecToBin];
    case 8:
      return ["Decimal to Octal", DecToOct];
    case 9:
      return ["Decimal to Hexadecimal", DecToHex];
    case 10:
      return ["Hexadecimal to Binary", HexToBin];
    case 11:
      return ["Hexadecimal to Octal", HexToOct];
    case 12:
      return ["Hexadecimal to Decimal", HexToDec];
    default:
      print("Invalid Input R-Run the program");
  }
}

String ConvertbyModulo(int base, String number) {
  int num = int.parse(number);
  List<String> processing = [];
  while (num > 0) {
    int modulo = num % base;
    if (modulo >= 0 && modulo <= 9) {
      processing.insert(0,"$modulo");
    } else {
      switch (modulo) {
        case 10:
          processing.add("A");
          break;
        case 11:
          processing.add("B");
          break;
        case 12:
          processing.add("C");
          break;
        case 13:
          processing.add("D");
          break;
        case 14:
          processing.add("E");
          break;
        case 15:
          processing.add("F");
          break;
      }
    }
    num = num ~/ base;
  }
  return processing.join("");
}

String ConvertbyBasePower(int base, String number) {
  int converted_number = 0;
  String digit;
  List<String> processing = number.split("").reversed.toList();
  for (int i = 0; i < processing.length; i++) {
    digit = processing[i];
    if (digit.codeUnitAt(0) >= 48 && digit.codeUnitAt(0) <= 57) {
      converted_number += (pow(base, i)).toInt() * int.parse(digit);
    } else {
      switch (digit) {
        case "A":
          converted_number += (pow(base, i)).toInt() * 10;
          break;
        case "B":
          converted_number += (pow(base, i)).toInt() * 11;
          break;
        case "C":
          converted_number += (pow(base, i)).toInt() * 12;
          break;
        case "D":
          converted_number += (pow(base, i)).toInt() * 13;
          break;
        case "E":
          converted_number += (pow(base, i)).toInt() * 14;
          break;
        case "F":
          converted_number += (pow(base, i)).toInt() * 15;
          break;
      }
    }
  }
  return converted_number.toString();
}

void print_number(String number, String conversion, Function? convert) {
  if (convert != null) {
    String converted_number = convert(number);
    print("""
------------------------------------------------------------------------
The Number $number is converted from $conversion & result is $converted_number 
------------------------------------------------------------------------
""");
    print("");
  }
}