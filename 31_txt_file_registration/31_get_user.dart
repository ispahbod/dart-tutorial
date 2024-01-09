import 'dart:io';

void main() {
  print("Enter your user ID:");
  int userId = int.parse(stdin.readLineSync()!);

  String userInfo = getUserInfo(userId);

  if (userInfo.isNotEmpty) {
    print("User Information for ID $userId:");
    print(userInfo);
  } else {
    print("User with ID $userId not found.");
  }
}

String getUserInfo(int userId) {
  // Open the user database file
  File userDatabase = File('user_database.txt');

  // Read all lines from the file
  List<String> lines = userDatabase.readAsLinesSync();

  // Search for the user with the specified ID
  for (String line in lines) {
    List<String> userFields = line.split(', ');
    int id = int.parse(userFields[0]);

    if (id == userId) {
      return "Name: ${userFields[1]}, Age: ${userFields[2]}";
    }
  }

  // Return an empty string if user not found
  return "";
}
