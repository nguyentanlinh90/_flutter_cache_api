
import 'package:dio/dio.dart';
import 'package:flutter_cache_api/bloc/base_bloc.dart';
import 'package:flutter_cache_api/models/slider_model.dart';
import 'package:flutter_cache_api/screens/vht_base_screen.dart';
import 'package:rxdart/rxdart.dart';

import '../models/banner_home_model.dart';

class HomeBloc extends BaseBloc {
  HomeBloc({required VHTBaseScreen screen}) : super(screen: screen);
  final bannerHome = PublishSubject<BannerHome>();
  Stream<BannerHome> get bannerHomeStream => bannerHome.stream;
  final sliderHome = PublishSubject<List<SliderModel>>();
  Stream<List<SliderModel>> get sliderHomeStream => sliderHome.stream;

  @override
 void  dispose() {
    super.dispose();
    bannerHome.close();
    sliderHome.close();

  }
  Future<List<SliderModel>> getSliderHome() async {
    showLoading(true);

    List<SliderModel> result = <SliderModel>[];
    try{
      await restApi.getsliders(cacheOptions).then((value) => {
        if(value.response!=null){
          result =SliderModel().listFromJson(value),
        }
      });
    }on DioError catch(dioError){
      //print('Error ${DioExceptions.fromDioError(dioError).toString()}');
    }
    showLoading(false);
    return result;
    // sliderHome.sink.add(result);
  }
  Future<BannerHome> getBannerTop() async {
    BannerHome? banner;
    showLoading(true);
    try{
      await restApi.getBannerHome(cacheOptions).then((value) => {
        if(value.response!=null){
          banner =BannerHome.fromJson(value.response),
        }
      });
    }on DioError catch(dioError){
      // handleError(dioError);
      showLoading(false);
    }
    showLoading(false);
    // bannerHome.sink.add(result!);
    return banner??BannerHome();
  }

}
