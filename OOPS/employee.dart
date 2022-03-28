class Employee {
  //pascal case //Class name Noun
  int? id;
  String? _name;
  double? _salary;
  void takeInput(int id, String name, double salary) {}
  set salary(double salary) => _salary = salary;
  double get salary => this._salary!;
  String get name => this._name!;
}
