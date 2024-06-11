import 'dart:convert';
import 'package:http/http.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

class ApiService {
  String baseUrl = "https://official-joke-api.appspot.com/";
  HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
    HttpLogger(logLevel: LogLevel.BODY),
  ]);

  Future<dynamic> get(String endpoint) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl$endpoint'));
      return _processResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post(String endpoint, dynamic data) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl$endpoint'),
        headers: {"Content-Type": "application/json"},
        body: json.encode(data),
      );
      return _processResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  // similarly for put and delete

  dynamic _processResponse(Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
