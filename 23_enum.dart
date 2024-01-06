// Example 1: Basic Enumeration
enum Color {
  red,
  green,
  blue,
}

// Example 2: Enumeration with Associated Values
enum Status {
  success,
  failure,
  inProgress,
}

void main() {
  // Example 1: Basic Enumeration
  print('Example 1: Basic Enumeration');
  Color selectedColor = Color.green;
  print('Selected Color: $selectedColor');
  print('Color Index: ${selectedColor.index}\n');
  //Example 2: Enumeration with Associated Values
  print('Example 2: Enumeration with Associated Values');
  Status taskStatus = Status.inProgress;
  print('Task Status: $taskStatus\n');
}
