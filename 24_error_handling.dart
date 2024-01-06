void main() {
  try {
    // Attempting to perform integer division by zero
    int result = 5 % 0;

    // This line won't be executed since an exception will be thrown above
    print(result);
  } on IntegerDivisionByZeroException catch (e, s) {
    // Handling the IntegerDivisionByZeroException
    print("Cannot divide by zero!!");
    print('$e , $s');
  } finally {
    // The code in the 'finally' block is executed regardless of whether an exception occurred or not
    print('ok');
  }
}
