void main() {
  // Functions without parameters
  print(sayHello());  // Example: Calling a function without parameters

  // Functions with parameters and return type
  print(sum(3, 4));   // Example: Calling a function with parameters

  // Functions with expression body
  print(subtract(5, 2));  // Example: Calling a function with expression body

  // Functions with optional parameters
  print(addWithSign(3, 2));     // Example: Calling a function with optional parameter
  print(addWithSign(3, 2, 2));  // Example: Providing a value for the optional parameter

  // Functions with named parameters
  print(multiply(4, num2: 3));  // Example: Calling a function with named parameters

  // Functions with named parameters and required annotation
  print(divide(10, num2: 2));   // Example: Calling a function with named parameters and required annotation
}

// Function without parameters
String sayHello() {
  return "Hello World";
}

// Function with parameters and return type
int sum(int a, int b) {
  return a + b;
}

// Function with expression body
int subtract(int a, int b) => a - b;

// Function with optional parameter
int addWithSign(int a, int b, [int sign = 0]) {
  return a + b * sign;
}

// Function with named parameters
int multiply(int num1, {int num2 = 0}) {
  return num1 * num2;
}

// Function with named parameters and required annotation
double divide(int num1, {required int num2}) {
  return num1 / num2;
}

