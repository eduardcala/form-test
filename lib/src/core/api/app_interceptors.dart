import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor{
  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    if(options.headers.containsKey("requiresToken")){

      options.headers.remove("requiresToken");

      options.headers.addAll({"Authorization": "Breare <Token>"});

      return options;
    }

  }

  @override
  Future onError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.RESPONSE:
        if(dioError.response.statusCode == 401) {
          // Todo cerrar la sesión del usuario
        }
        break;
      default:
        break;
    }
    return super.onError(dioError);
  }
}