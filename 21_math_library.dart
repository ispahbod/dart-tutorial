// Importing the dart:math library
import 'dart:math';

void main() {
  Random random = Random();

  // Example 1: Generate a random integer between 0 and 99
  print('Random Integer: ${random.nextInt(100)}');

  // Example 2: Generate a random boolean value
  print('Random Boolean: ${random.nextBool()}');

  // Example 3: Generate a random double between 0.0 and 1.0
  print('Random Double: ${random.nextDouble()}');

  print("---------------");

  // Example 1: Finding the minimum of two numbers
  print(min(10, 20)); // Output: 10

  // Example 2: Finding the maximum of two numbers
  print(max(10, 20)); // Output: 20

  // Example 3: Calculating the arctangent of the ratio of two numbers
  print(atan2(10, 20)); // Output: 0.46364760900080615

  // Example 4: Calculating the power of a number to another
  print(pow(10, 20)); // Output: 1.0e+20

  // Example 5: Calculating the sine of an angle (in radians)
  print(sin(90)); // Output: 0.8939966636005579

  // Example 6: Calculating the cosine of an angle (in radians)
  print(cos(90)); // Output: -0.4480736161291701

  // Example 7: Calculating the tangent of an angle (in radians)
  print(tan(90)); // Output: -1.995200412208242

  // Example 8: Calculating the arccosine of a number
  print(acos(0.5)); // Output: 1.0471975511965979

  // Example 9: Calculating the arcsine of a number
  print(asin(0.5)); // Output: 0.5235987755982988

  // Example 10: Calculating the arctangent of a number
  print(atan(0.5)); // Output: 0.4636476090008061

  // Example 11: Calculating the square root of a number
  print(sqrt(90)); // Output: 9.486832980505138

  // Example 12: Calculating the exponential of a number
  print(exp(90)); // Output: 1.2204032943178408e+39

  // Example 13: Calculating the natural logarithm of a number
  print(log(90)); // Output: 4.499809670330265
}
