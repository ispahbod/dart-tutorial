void main() {
  // Example 1: Creating and driving a SportCar
  letsDrive(SportCar(1001, "Megan", 2014));
  print("-----------");

  // Example 2: Creating and driving an SuvCar
  letsDrive(SuvCar(1002, "Volvo", 2008));
}

// Function that demonstrates polymorphism by accepting objects of type Car
void letsDrive(Car car) {
  car.start();
  car.accelerate();
}

// Base class representing a Car
class Car {
  int id;
  String name;
  String type;
  int createdAt;
  int maxSpeed;

  // Constructor for the Car class
  Car(this.id, this.name, this.type, this.createdAt, this.maxSpeed) {
    print("New instance of car is created");
  }

  // Method to simulate acceleration
  void accelerate() {
    print("Accelerate is called");
  }

  // Method to start the car
  void start() {
    print("Car is started");
  }

  // Method to stop the car
  void stop() {
    print("Car is stopped");
  }
}

// Derived class representing a SportCar, inheriting from Car
class SportCar extends Car {
  // Constructor for the SportCar class
  SportCar(int id, String name, int createdAt)
      : super(id, name, "Sport", createdAt, 300) {
    print("New instance of sport car is created");
  }

  // Override the start method to provide specific behavior for SportCar
  @override
  void start() {
    super.start(); // Call the start method of the base class
    print("Sport car is started");
  }
}

// Derived class representing an SuvCar, inheriting from Car
class SuvCar extends Car {
  // Constructor for the SuvCar class
  SuvCar(int id, String name, int createdAt)
      : super(id, name, "Suv", createdAt, 240) {
    print("New instance of SUV car is created");
  }

  // Override the start method to provide specific behavior for SuvCar
  @override
  void start() {
    super.start(); // Call the start method of the base class
    print("SUV car is started");
  }
}
