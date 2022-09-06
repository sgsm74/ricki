import 'package:dio/dio.dart';

abstract class HttpService {
  Future<Response> getData(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  });
}

class DioService extends HttpService {
  DioService({required this.dio});
  final Dio dio;
  @override
  Future<Response> getData(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  }) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: header),
      );
      return response;
    } catch (exp) {
      print(exp);
      rethrow;
    }
  }
}
