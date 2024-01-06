void main() {
  // Example 1: Creating an instance of Human using the default constructor
  Human humanInstance = Human(
    age: 20,
    firstName: 'hamed',
    lastName: 'hadi',
    nationality: 'iraq',
    height: 100.1,
  );
  humanInstance.married = false;
  print(humanInstance.married);
  print(humanInstance.sleep());

  print("--------------");

  // Example 2: Creating an instance of Persian Human using a named constructor
  Human persianHuman = Human.persian(
    age: 21,
    firstName: 'ali',
    lastName: 'karimi',
    height: 130.1,
  );
  print(persianHuman.nationality);

  print("--------------");

  // Example 3: Creating an instance of American Human using a named constructor
  Human americanHuman = Human.american(
    age: 21,
    firstName: 'javid',
    lastName: 'naeemi',
    height: 120.1,
  );
  print(americanHuman.nationality);
}

class Human {
  // Properties
  int age;
  String firstName;
  String lastName;
  String nationality;
  num height;
  bool? married; // Nullable boolean property

  // Default constructor
  Human({
    required this.age,
    required this.firstName,
    required this.lastName,
    required this.nationality,
    required this.height,
  });

  // Named constructor for Persian Human
  Human.persian({
    required this.age,
    required this.firstName,
    required this.lastName,
    required this.height,
  }) : nationality = 'iran';

  // Named constructor for American Human with additional logic
  Human.american({
    required this.age,
    required this.firstName,
    required this.lastName,
    required this.height,
  }) : nationality = 'usa' {
    print('New instance of human is created');
  }

  // Method for demonstrating functionality
  String sleep() {
    return "$firstName is sleeping now...";
  }
}
