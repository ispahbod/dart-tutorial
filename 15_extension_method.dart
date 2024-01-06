void main() {
  // Example 1: Converting a string to an integer using the extension method
  String text = "1001";
  int integerVariable = text.toInt();
  print(integerVariable);

  // Example 2: Converting a string to a double using the extension method
  double doubleVariable = text.toDouble();
  print(doubleVariable);

  // Example 3: Using the 'CarExt' extension to get a newId for the Car instance
  Car car = Car();
  car.id = 20;
  print(car.newId);
}

// Extension for converting strings to numbers
extension NumberParsing on String {
  int toInt() => int.parse(this);

  double toDouble() => double.parse(this);
}

// Car class with an extension adding a newId getter
class Car {
  int id = 0;
}

// Extension for the Car class
extension CarExt on Car {
  // Getter that calculates a newId based on the original id
  int get newId => 1000 + id;
}
