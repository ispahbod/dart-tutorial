void main() {
  // String variable
  var name = "hamed";
  print(name);

  // Explicitly declared String variable
  String lname = "hadi";
  print(lname);

  // Integer variable
  int phone = 9105102703;
  print(phone);

  // Double variable
  double score = 19.5;
  print(score);

  // Num variable (can hold both int and double)
  num height = 100.5;
  print(height);

  // Boolean variable
  bool married = false;
  print(married);

  // Nullable String variable
  String? uname;
  print(uname);

  // Late-initialized variable
  late int age;
  age = 19;
  print(age);

  // Final variable (immutable, cannot be reassigned)
  final int nationalId = 12345678;
  print(nationalId);

  // Const variable (compile-time constant)
  const String fatherName = "hossein";
  print(fatherName);

  // List of dynamic elements (can hold any type)
  List lists = ['one', 'two'];
  print(lists);
  print(lists[0]);

  // List of integers
  List<int> numbers = [1, 2];
  print(numbers);
}
