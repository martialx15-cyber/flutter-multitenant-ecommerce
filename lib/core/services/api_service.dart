import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://example.com/api',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  Future<Response> getProducts() async {
    return _dio.get('/products');
  }

  Future<Response> getProduct(String id) async {
    return _dio.get('/products/$id');
  }

  Future<Response> login(String email, String password, String tenantId) async {
    return _dio.post(
      '/auth/login',
      data: {
        'email': email,
        'password': password,
      },
      options: Options(headers: {'x-tenant-id': tenantId}),
    );
  }

  Future<Response> createCheckoutIntent(double amount) async {
    return _dio.post(
      '/payments/create-intent',
      data: {'amount': amount},
    );
  }
}
