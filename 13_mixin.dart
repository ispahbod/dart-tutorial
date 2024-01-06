// Mixin defining a common behavior for classes with a 'name' property
mixin Name {
  String name = '';

  // Method to print the name
  printName() {
    print(name);
  }
}

// Class 'Human' with the 'Name' mixin applied
class Human with Name {
  final int id;

  // Constructor for Human class
  Human(this.id, String humanName) {
    name = humanName;
  }
}

// Class 'Car' with the 'Name' mixin applied
class Car with Name {
  final int id;

  // Constructor for Car class
  Car(this.id, String carName) {
    name = carName;
  }
}

void main() {
  // Example: Creating instances of Human and Car with the Name mixin applied
  Human human = Human(1, 'hamed');
  Car car = Car(2, 'bmw 530');

  // Calling the printName method on instances
  car.printName(); // Output: bmw 530
  human.printName(); // Output: hamed
}