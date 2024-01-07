import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

void main() async {
  final String url = 'https://httpbin.org/get';

  try {
    // Create a list of Future objects representing each asynchronous operation
    List<Future> futures = [
      fetchWithDio(url),
      fetchWithHttp(url),
    ];

    // Wait for all asynchronous operations to complete
    await Future.wait(futures);
  } catch (e) {
    print('An error occurred: $e');
  }
}

Future<void> fetchWithDio(String url) async {
  try {
    Response response = await Dio().get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.toString());
      print('Using Dio - Origin: ${jsonData['origin']}');
    } else {
      print('Using Dio - Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('Using Dio - An error occurred: $e');
  }
}

Future<void> fetchWithHttp(String url) async {
  try {
    http.Response data = await http.get(Uri.parse(url));

    if (data.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(data.body);
      print('Using http - Origin: ${jsonData['origin']}');
    } else {
      print('Using http - Request failed with status: ${data.statusCode}');
    }
  } catch (e) {
    print('Using http - An error occurred: $e');
  }
}
