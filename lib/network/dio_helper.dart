import 'package:dio/dio.dart';

class DioHelper
{
  static Dio? dio;
  static init()
  {
    dio=Dio(
      BaseOptions(
        baseUrl: '/api.openweathermap.org/data/2.5/',
        receiveDataWhenStatusError: true,

      ),
    );
  }
 static  Future<Response> GetData({
  required String url,
  required Map<String,dynamic> query,
})async
  {
    return await dio!.get(url,queryParameters: query,);
  }
}