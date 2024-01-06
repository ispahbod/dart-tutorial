void main() {
  // Example 1: If-Else Statement with Numeric Comparison
  var num = 2 + 2;

  if (num == 4) {
    print('if');
  } else if (num == 6) {
    print('elseif');
  } else {
    print('else');
  }

  print("------------");
  // Example: If-Else Statement with Type Check (without curly braces)

  var text = "hamed";

  if (text is int)
    print('integer');
  else if (text is String)
    print('string');
  else
    print('Neither integer nor string');
}
