import 'dart:async';

void main() async {
  // Initiate the fetchUserOrders operation
  fetchUserOrders();
  print("Fetching User Orders ...");

  // Delayed Future to simulate asynchronous operation
  Future<String> sender = Future.delayed(
      Duration(seconds: 6), () => 'I print this text after 6 seconds');

  // Await the result and print
  String res = await sender;
  print(res);

  // Uncomment the following block if you want to test myReciver
  // Future<String> myReciver = Future(() => "This is my new text");
  // myReciver.then((myTxt) {
  //   print(myTxt);
  // });

  // Await and print the result of createOrderMessage
  print(await createOrderMessage());
}

// Function to simulate fetching user orders after a delay
Future<void> fetchUserOrders() {
  return Future.delayed(Duration(seconds: 3), () => print("Large Soda"));
}

// Function to create an order message using getUserOrders
Future<String> createOrderMessage() async {
  var order = await getUserOrders();
  return 'Your Order is: $order';
}

// Function to simulate fetching user orders after a delay
Future<String> getUserOrders() {
  return Future.delayed(Duration(seconds: 2), () => 'Soda');
}
