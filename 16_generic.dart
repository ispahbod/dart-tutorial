// Generic class 'Box' with type parameter 'T'
class Box<T> {
  // Late initialization for the content of type 'T'
  late T _content;

  // Method to put an item of type 'T' into the box
  void put(T content) {
    this._content = content;
  }

  // Method to retrieve the item of type 'T' from the box
  T get() {
    return _content;
  }
}

void main() {
  // Example 1: Creating a Box of type 'String' and putting/retrieving a string
  var box = Box<String>();
  box.put("Hello World");
  print(box.get());

  // Example 2: Creating a Box of type 'int' and putting/retrieving an integer
  var box1 = Box<int>();
  box1.put(1001);
  print(box1.get());

  // Example 3: Creating a Box of type 'int' with explicit type and putting/retrieving an integer
  Box<int> intBox = Box();
  intBox.put(1002);
  print(intBox.get());

  // Example 4: Creating a Box of type 'int' with explicit type and putting/retrieving an integer
  Box<int> intBox1 = Box<int>();
  intBox1.put(1003);
  print(intBox1.get());

  // Example 5: Creating a list of strings with explicit type
  var myList = <String>['Hamed', 'Hadi'];
  print(myList);
}
