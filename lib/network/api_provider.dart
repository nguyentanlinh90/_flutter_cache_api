

import 'package:dio/dio.dart';
import 'package:flutter_cache_api/network/base/response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_provider.g.dart';

@RestApi(baseUrl: '')
abstract class ApiProvider {

  factory ApiProvider(Dio dio, {String? baseUrl}) {
    return _ApiProvider(dio, baseUrl: baseUrl);
  }

  @GET('getsliders')
  Future<ResponseModel> getsliders(@DioOptions() Options options);

  @GET('GetBannerHome')
  Future<ResponseModel> getBannerHome(@DioOptions() Options options);
}

