import 'package:test/test.dart';

void main() {
  // Test group for functions in the main file
  group("Group test - ", () {
    // Test for the 'add' function
    test('Test to check the add function', () {
      var matcher = 30;
      var actual = add(10, 20);
      expect(actual, matcher);
    });

    // Test for the 'sub' function
    test('Test to check the sub function', () {
      var matcher = 10;
      var actual = sub(20, 10);
      expect(actual, matcher);
    });
  });
}

// Function to add two integers
int add(int x, int y) {
  return x + y;
}

// Function to subtract two integers
int sub(int x, int y) {
  return x - y;
}
