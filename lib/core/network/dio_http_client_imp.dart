import 'package:dio/dio.dart';
import 'package:pruebatec/core/common/constants.dart';
import 'package:pruebatec/core/error/exception_custom.dart';
import 'package:pruebatec/core/network/http_client.dart';

class DioHttpClientImp implements HttpClient {
  late final Dio _dio;

  DioHttpClientImp() {
    final opt = BaseOptions(headers: {
      'Content-Type': 'application/josn',
      'x-api-key': apiKey,
    });
    _dio = Dio(opt);
  }

  @override
  Future<Response> get({
    required String url,
  }) async {
    try {
      final result = _dio.get(url);
      return result;
    } on Exception catch (e) {
      throw ExceptionCustom(e.toString());
    }
  }
}
