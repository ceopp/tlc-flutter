import 'package:dio/dio.dart';
import 'package:superstarteam/utils/utils.dart';

class Static {
  Static._();

  static Dio dio({String? newUrl}) {
    final baseClient = Dio(
      BaseOptions(
        baseUrl: newUrl ?? ApiPath.baseUrl,
      ),
    );
    baseClient.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
    // baseClient.interceptors.add(OauthInterceptors(baseClient));
    return baseClient;
  }
}
