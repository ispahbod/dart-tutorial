import 'dart:io';

void main() {
  // Create 'logs' directory recursively
  var dir = Directory('logs')
      .create(recursive: true)
      .then((Directory directory) => print('Directory created: $directory'));

  // Check if 'logs' directory exists
  final logDir = Directory('logs');
  logDir.exists().then((isThere) {
    print(isThere ? 'Directory exists' : 'Directory does not exist');
  });
}
