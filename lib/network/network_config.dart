
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_cache_api/network/api_provider.dart';
 abstract class NetworkConfig {
  static final String baseUrl = "http://mobile.vietravel.com/api/";
  //final String baseUrl = "http://108.108.110.22:8080/api/";
   late ApiProvider restApi ;
  Options cacheOptions = buildCacheOptions(const Duration(days: 3), maxStale: const Duration(days: 7));//  forceRefresh: true
  NetworkConfig.internal(){
    DioCacheManager  _dioCacheManager = DioCacheManager(CacheConfig());
    Dio _dio = Dio();
    _dio.options.baseUrl=baseUrl;
    //   _dio!.options.receiveTimeout = 3000;
    _dio.interceptors.add(AppInterceptors());
    _dio.interceptors.add(_dioCacheManager.interceptor);
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(requestBody: true,responseBody: true));
    }
   // cacheOptions = buildCacheOptions(const Duration(days: 7));

    restApi =ApiProvider(_dio, baseUrl: baseUrl);
  }
 //   NetworkConfig() {
 //    _dio ??= Dio();
 //    _dio!.options.baseUrl=baseUrl;
 // //   _dio!.options.receiveTimeout = 3000;
 //    _dio!.interceptors.add(AppInterceptors());
 //    if (kDebugMode) {
 //      _dio!.interceptors.add(LogInterceptor(requestBody: true,responseBody: true));
 //    }
 //    restApi =ApiProvider(_dio!, baseUrl: baseUrl);
 //    //restApi =ApiProvider(dio,token!, baseUrl: baseUrl);
 //  }

  void onStart(){}
  void dispose() {}

}

class AppInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
       // await SingletonStorage.getInstance();
       // var token = await SingletonStorage.getToken();
    //   token??"";
       String token='';
       print('token $token');

       Map<String, dynamic> requestHeaders = {
         'Content-type': 'application/json',
         'Accept': 'application/json',
         'Authorization': token,
         'Language': 'vi'
       };
    options.headers =requestHeaders;
    return super.onRequest(options, handler);
  }
  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
   // print('response ${response.data.toString()}');
    return super.onResponse(response, handler);
  }

  @override
  onError(DioError err, ErrorInterceptorHandler handler) {
    // var url = err.request.uri;
    print("************************************************");
    print(err);
    super.onError(err, handler);
  }
}