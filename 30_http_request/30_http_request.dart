import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

void main() async {
  final String url = 'https://httpbin.org/get';

  // Approach 1: Using Dio
  try {
    Response response = await Dio().get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.toString());
      print('Approach 1 - Origin: ${jsonData['origin']}');
    } else {
      print('Approach 1 - Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('Approach 1 - An error occurred: $e');
  }

  // Approach 2: Using http
  try {
    http.Response data = await http.get(Uri.parse(url));

    if (data.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(data.body);
      print('Approach 2 - Origin: ${jsonData['origin']}');
    } else {
      print('Approach 2 - Request failed with status: ${data.statusCode}');
    }
  } catch (e) {
    print('Approach 2 - An error occurred: $e');
  }
}
