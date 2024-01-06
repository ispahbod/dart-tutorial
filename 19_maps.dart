void main() {
  // Example 1: Creating a map using shorthand syntax
  var names = <int, String>{1001: 'ali', 1002: 'hamed'};

  // Accessing a value using the key
  print(names[1001]); // Output: ali

  // Example 2: Creating a map using the explicit Map constructor
  Map<int, String> names1 = {1002: 'abbas', 1003: 'hasan'};

  // Accessing a value using the key
  print(names1[1002]); // Output: abbas

  // Adding a new entry to the map
  names[1004] = 'reza';
  print(names[1004]); // Output: reza

  // Updating an existing entry in the map
  names[1001] = 'hassan';
  print(names[1001]); // Output: hassan

  // Removing an entry from the map
  names.remove(1002);

  // Checking if the map contains a key
  print(names.containsKey(1002)); // Output: false

  // Getting the keys and values of the map
  var keys = names.keys.toList();
  var values = names.values.toList();

  print("Keys: $keys");     // Output: Keys: [1001, 1004]
  print("Values: $values"); // Output: Values: [hassan, reza]

  // Iterating over the entries in the map
  names.forEach((key, value) {
    print("Key: $key, Value: $value");
  });

  // Checking if the map is empty
  print(names.isEmpty); // Output: false

  // Clearing all entries from the map
  names.clear();
  print(names.isEmpty); // Output: true
}
