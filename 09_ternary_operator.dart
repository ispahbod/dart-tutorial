void main() {
  // Example 1: Using checkNotNull function
  print(checkNotNull(null));  // Output: false

  // Example 2: Using checkNull function
  print(checkNull(null));      // Output: true
}

// Function to check if an object is not null
Object checkNotNull(Object? value) => value == null ? false : true;

// Function to provide a default value if the object is null
Object checkNull(Object? value) => value ?? true;
