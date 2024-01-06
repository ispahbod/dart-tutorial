void main() {
  // Arithmetic Operators
  print(2 + 2);    // 4
  print(4 - 2);    // 2
  print(4 * 2);    // 8
  print(4 / 2);    // 2.0 (result is a double)
  print(4 ~/ 2);   // 2 (integer division)
  print(4 % 2);    // 0 (remainder)

  // Comparison Operators
  print(2 == 2);   // true
  print(2 != 2);   // false
  print(2 >= 2);   // true
  print(2 <= 2);   // true
  print(2 > 2);    // false
  print(2 < 2);    // false

  // Type Test Operators
  print(2 is num);        // true
  print("hamed" is String); // true
  print("hamed" is! String); // false

  // Increment and Decrement Operators
  int one = 1;
  print(one++);    // 1 (post-increment)
  print(one--);    // 2 (post-decrement)

  // As Operator
  var obj = 20 as Object;
  print(obj);      // 20

  // Compound Assignment Operators
  one += 1;        // one = one + 1;
  print(one);      // 2
  one -= 1;        // one = one - 1;
  print(one);      // 1
  one *= 10;       // one = one * 10;
  print(one);      // 10
  one ~/= 2;       // one = one ~/ 2;
  print(one);      // 5
  one %= 2;        // one = one % 2;
  print(one);      // 1

  // Logical Operators
  print(1 is int && "hi" is String);    // false (both conditions must be true)
  print(1 is String || "hi" is String); // true (either condition must be true)
  print(!(1 is String));                // true (negation)

  // Additional Example: Conditional Operator (Ternary Operator)
  int age = 20;
  String result = (age >= 18) ? "Adult" : "Minor";
  print(result);  // Adult
}
