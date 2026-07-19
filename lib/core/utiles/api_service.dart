import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final Dio _dio;
  final String baseUrl = "https://www.googleapis.com/books/v1/";
  final apiKey = dotenv.get('GOOGLE_BOOKS_API_KEY');

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$baseUrl$endpoint');
    return response.data;
  }
}
