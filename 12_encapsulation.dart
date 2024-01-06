class Product {
  int? _id;
  int? _price;
  String? _title;

  // Getter for the 'id' property
  int get id => _id as int;

  // Getter and setter for the 'title' property
  String get title => _title as String;

  set title(String title) => _title = title;

  // Getter and setter for the 'price' property
  String getPrice() => '$_price IRT ';

  void setPrice(int value) => _price = value;
}

void main() {
  // Example: Creating an instance of the Product class
  Product product = Product();

  // Setting the price of the product
  product.setPrice(1000);

  // Setting the title of the product
  product.title = 'iphone 12';
  // Getting and printing the formatted price
  print(product.title);
  print(product.getPrice());
}
