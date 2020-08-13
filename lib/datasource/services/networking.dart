import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl = 'https://www.googleapis.com/books/v1/volumes?q=';

class Networking {
  final String keyword;

  const Networking({this.keyword});
  Future<dynamic> getData() async {
    try {
      http.Response response = await http.get(baseUrl + '$keyword');
      if (response.statusCode == 200) {
        final decodedJson = jsonDecode(response.body);
        return decodedJson;
      }
    } catch (_) {
      throw NetworkException();
    }
  }
}

class NetworkException implements Exception {}
