void main() {
  Map<String, int> phones = {"Mohit": 7065, "Namit": 1234, "Manish": 5678};
  Map<String, List<int>> phoneMap = {
    "Mohit": [7065, 3630, 38],
    "Nmait": [1234, 9870]
  };
  phones.putIfAbsent("Mohit", () => 0000);
  phones.putIfAbsent("Sachin", () => 0000);
  print(phones.remove("Manish3"));
  print(phones.containsKey("Mohit") ? "Key Found" : "Key Not Found");
  print(phones.containsValue(10) ? "Value Found" : "Value Not Found");
  print(phones);
  phones.forEach((key, value) {
    print("Key is %$key & value is $value");
  });
  phones.clear();
}
