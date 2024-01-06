void main() {
  // Example 1: Creating an instance of Horse and invoking sleep method
  Horse horse = Horse();
  horse.sleep();

  // Example 2: Creating an instance of Horse through the Animal type and invoking eat method
  Animal horse2 = Horse();
  horse2.eat();

  // Example 3: Creating an instance of Dog and invoking eat method
  Dog dog = Dog();
  dog.eat();
}

// Abstract class representing an Animal
abstract class Animal {
  // Abstract method that must be implemented by subclasses
  void eat();

  // Concrete method that can be optionally overridden by subclasses
  void sleep() {
    print('Animal is sleeping');
  }
}

// Concrete class representing a Horse, inheriting from Animal
class Horse extends Animal {
  // Implementation of the eat method specific to Horse
  @override
  void eat() {
    print('Horse is eating');
  }
}

// Concrete class representing a Dog, implementing Animal interface
class Dog implements Animal {
  // Implementation of the eat method specific to Dog
  @override
  void eat() {
    print('Dog is eating');
  }

  // Implementation of the sleep method specific to Dog
  @override
  void sleep() {
    print('Dog is sleeping');
  }
}