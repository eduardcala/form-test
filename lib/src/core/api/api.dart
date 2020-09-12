import 'package:dio/dio.dart';
import 'package:form_test/src/core/api/app_interceptors.dart';

class ApiProvider {
  final String _baseApiUrl = "https://api.domain.com/";

  String get urlApi => _baseApiUrl;

  Dio dio;

  ApiProvider(){
    dio = Dio(BaseOptions(baseUrl: _baseApiUrl));
    dio.interceptors.add(AppInterceptors());
  }
}