import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient({required this.dio});

  static Dio getDioInstance() {
    return Dio(
      BaseOptions(
        baseUrl:
            '[https://staging1.hashfame.com/api/v1/](https://staging1.hashfame.com/api/v1/)',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
        headers: {'Content-Type': 'application/json'},
      ),
    );
  }
}
