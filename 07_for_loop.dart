void main() {
  // Example 1: For Loop (increasing order)
  for (var num = 1; num < 10; num++) {
    print(num);
  }

  print("-----------");

  // Example 2: For Loop (decreasing order)
  for (var num = 10; num > 0; num--) {
    print(num);
  }

  print("-----------");

  // Example 3: While Loop
  var num = 1;
  while (num < 10) {
    print(num);
    num++;
  }

  print("-----------");

  // Example 4: Do-While Loop
  var num1 = 1;
  do {
    print(num1);
    num1++;
  } while (num1 > 10);

  print("-----------");

  // Example 5: For-In Loop with Break and Continue
  var numbers = [1, 2, 3, 4, 5];
  for (var number in numbers) {
    if (number == 4) {
      break; // Exit the loop if the number is 4
    }
    if (number == 3) {
      continue; // Skip the rest of the loop for number 3
    }
    print(number);
  }
}