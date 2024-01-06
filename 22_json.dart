import 'dart:convert';

void main() {
  // Example 1: Creating a JSON object
  Map<String, dynamic> person = {
    'name': 'John Doe',
    'age': 30,
    'isStudent': false,
    'grades': [90, 85, 92],
    'address': {
      'city': 'New York',
      'zipCode': '10001',
    },
  };
  // Example 2: Converting a JSON object to a string
  String jsonString = json.encode(person);
  print('Encoded JSON String:\n$jsonString');

  // Example 3: Parsing a JSON string
  Map<String, dynamic> parsedJson = json.decode(jsonString);
  print('\nParsed JSON Object:');
  print(parsedJson);

  // Example 4: Accessing values from the parsed JSON
  print('\nAccessing Values:');
  print('Name: ${parsedJson['name']}');
  print('Age: ${parsedJson['age']}');
  print('Is Student: ${parsedJson['isStudent']}');
  print('Grades: ${parsedJson['grades']}');
  print('City: ${parsedJson['address']['city']}');
  print('Zip Code: ${parsedJson['address']['zipCode']}');
}
