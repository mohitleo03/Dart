import 'employee.dart';

void main() {
  Employee mohit = Employee();
  mohit.id = 179;
  //mohit.name = "Mohit";
  mohit.salary = 70000;
  print(mohit.id);
  print(mohit.name);
  //print(mohit.salary);
  mohit.salary = mohit.salary + 10000.0;
}
