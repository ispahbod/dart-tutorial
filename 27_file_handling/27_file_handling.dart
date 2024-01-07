import 'dart:io';
import 'dart:convert';

Future main() async {
  // Read content from 'content.txt'
  var file = File('content.txt');
  var contents = await file.readAsString();
  print(contents);

  print('-----------');

  // Print the length of the content
  print(contents.length);

  print('-----------');

  // Read content as lines
  var lines = await file.readAsLines();
  print(lines.length);

  print('-----------');

  // Append 'hello world' to 'logs.txt'
  var logs = File('logs.txt').openWrite(mode: FileMode.append);
  logs.write('hello world\n');
  await logs.flush();
  await logs.close();

  print('-----------');

  // Print the last modified timestamp of 'logs.txt'
  var logFile = File('logs.txt');
  logFile.lastModified().then((value) => print(value));

  print('-----------');

  // Read and print lines from 'config.txt'
  File('config.txt')
      .openRead()
      .map(utf8.decode)
      .transform(LineSplitter())
      .forEach((element) {
    print(element);
  });
}
