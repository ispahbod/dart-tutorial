void main() {
  // Example 1: Using an arrow function with explicit type for forEach
  var names = ["ali", "reza", "qasem", "hamed"];
  names.forEach((String value) => print(value));
  print("---------------");

  // Example 2: Using an anonymous function without explicit type for forEach
  names.forEach((value) {
    print(value);
  });
  print("---------------");

  // Example 3: Using forEach with a function reference (in this case, 'print')
  names.forEach(print);
  print("---------------");

  // Example 4: Using forEach with a custom function reference ('printAllElemnts')
  names.forEach(printAllElemnts);
}

// Custom function to print an element
void printAllElemnts(String value) {
  print(value);
}
