// Typedef for a list of integers
typedef DataList = List<int>;

// Typedef for a function that takes a String argument and returns a String
typedef Greet = String Function(String name);

// Function that says hello
String sayHello(String name) {
  return 'Hello $name';
}

// Function that says goodbye
String sayGoodBye(String name) {
  return 'Goodbye $name';
}

void main() {
  // Example 1: Using the DataList typedef
  DataList numbers = [1, 2, 3, 4];
  print("Numbers: $numbers");

  // Example 2: Using the Greet typedef and assigning the sayHello function
  Greet greet = sayHello;

  // Example 3: Invoking the greet function
  String greeting = greet('Amir');
  print("Greeting: $greeting");

  // Example 4: Assigning the sayGoodBye function to the greet variable
  greet = sayGoodBye;

  // Example 5: Invoking the greet function with a different implementation
  greeting = greet('Amir');
  print("Greeting: $greeting");
}
