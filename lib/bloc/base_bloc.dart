import 'package:dio/dio.dart';
import 'package:flutter_cache_api/network/handler/dio_exceptions.dart';
import 'package:flutter_cache_api/network/network_config.dart';
import 'package:flutter_cache_api/screens/vht_base_screen.dart';
  class BaseBloc extends NetworkConfig {
    final VHTBaseScreen screen;
    BaseBloc({required this.screen}) : super.internal();

    void handleError(DioError dioError){
      String error =DioExceptions.fromDioError(dioError).toString();
      if(screen!=null){
        screen.showErrorRequest(error);
      }else{
        print('baseScreen null');
      }
    }

    void dispose() {}
    void showLoading(bool show){
      if(screen!=null){
        screen.showLoading(show);
      }else{
        print('baseScreen: null');
      }
    }

}
