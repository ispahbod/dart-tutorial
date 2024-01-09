import 'dart:io';

void main() {
  // Get user information
  print("Enter your name:");
  String name = stdin.readLineSync()!;

  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  // Save user information to a text file
  int userId = saveUserInfo(name, age);

  // Display registration confirmation
  print("Registration successful!");
  print("Your ID is: $userId");
}

int saveUserInfo(String name, int age) {
  // Open or create the user database file
  File userDatabase = File('user_database.txt');
  if (!userDatabase.existsSync()) {
    userDatabase.createSync();
  }

  // Read the existing content of the file to determine the next ID
  List<String> lines = userDatabase.readAsLinesSync();
  int nextId = lines.isEmpty ? 1 : lines.length + 1;

  // Append the new user information to the file
  userDatabase.writeAsStringSync('$nextId, $name, $age\n', mode: FileMode.append);

  return nextId;
}
