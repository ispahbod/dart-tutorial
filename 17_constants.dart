void main() {
  // Example 1: Using 'final' with a String variable
  final String name = "Hamed";
  print(name);

  // Example 2: Using 'const' with a String variable
  const String username = "ispahbod";
  print(username);

  // Example 3: Using 'final' with an instance of the Human class
  final human = Human();
  human.id = 10;
  print(human.id);

  // Example 4: Attempting to use 'const' with an instance of the Human class (will not work)
  // const human2 = Human(); // Uncommenting this line will result in an error

  // Example 5: Using 'const' with an instance of the Car class
  const car = Car(1, 'Bmw');
  print(car.name);

  // Example 6: Accessing static constants in the Car class
  print(Car.maxSpeed); // Accessing a static const int
  print(Car.type);      // Accessing a static final String
}

// Example class: Human with a late-initialized 'id' field
class Human {
  late int id;
}

// Example class: Car with static constants, a final field, and a const constructor
class Car {
  static const int maxSpeed = 120; // Static constant
  static final String type = "Sport"; // Static final variable
  final int id;
  final String name;

  const Car(this.id, this.name); // Const constructor
}