import 'dart:async';

void main() {
  // Create a list of numbers
  List<int> numbers = [1, 2, 3, 4, 5];

  // Create a stream from the list of numbers
  Stream stream = Stream<int>.fromIterable(numbers);

  // Create a broadcast stream from the original stream
  Stream broadcast = stream.asBroadcastStream();

  // Listen to the original stream and print each value
  stream.listen((value) {
    print('Value item: $value');
  });

  // Use broadcast stream to perform various operations
  broadcast.first.then((value) => print('First value: $value'));
  broadcast.last.then((value) => print('Last value: $value'));
  broadcast.where((value) => value % 2 == 0).listen((value) => print('Even value: $value'));
  broadcast.take(3).listen((value) => print('Taken value: $value'));
  broadcast.skip(2).listen((value) => print('Skipped value: $value'));
  broadcast.takeWhile((value) => value > 0).listen((value) => print('Taken while value is positive: $value'));
  broadcast.skipWhile((value) => value < 4).listen((value) => print('Skipped while value is less than 4: $value'));

  // Use single to get a single value from the stream
  broadcast.single
      .then((value) => print('Single value is $value'))
      .catchError((error) => print('Error during single: $error'));

  // Create a listener on the original stream and handle data, errors, and completion
  var listener = stream.listen(null);
  listener.onData((data) {
    print('Data: $data');

    // Cancel the listener when data is 2
    if (data == 2) {
      listener.cancel();
    }
  });
  listener.onError((error) => print('Error: $error'));
  listener.onDone(() => print('Done'));
}
