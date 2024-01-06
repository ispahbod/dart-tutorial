void main() {
  // Example 1: Creating a list of integers
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers);

  // Example 2: Creating a list with dynamic elements
  List<dynamic> list = [1, "hamed", 3.2, "hadi"];
  print("---------------");
  print(list);

  // Example 3: Adding elements to the 'numbers' list
  numbers.add(10);
  print("---------------");
  print(numbers);

  // Example 4: Reversing the 'numbers' list
  print("--------------- reversed");
  print(numbers.reversed);

  // Example 5: Getting information about the 'numbers' list
  print("--------------- length");
  print(numbers.length);
  print("--------------- first");
  print(numbers.first);
  print("--------------- last");
  print(numbers.last);
  print("--------------- hashCode");
  print(numbers.hashCode);
  print("--------------- isNotEmpty");
  print(numbers.isNotEmpty);

  // Example 6: Removing elements from the 'numbers' list
  print("---------------");
  numbers.remove(10);
  numbers.removeAt(1);
  numbers.removeWhere((element) => element == 20);

  // Example 7: Adding multiple elements to the 'numbers' list
  print("---------------");
  numbers.addAll([2, 3, 4, 5]);
  print(numbers);

  // Example 8: Iterating over elements in the 'numbers' list
  print("---------------");
  numbers.forEach((int element) {
    print(element);
  });

  // Example 9: Combining two lists using the spread operator
  print("---------------");
  List<dynamic> allLists = [...numbers, ...list];
  print(allLists);
}
