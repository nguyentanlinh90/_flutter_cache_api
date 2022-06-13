import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_api/bloc/home_bloc.dart';
import 'package:flutter_cache_api/bloc/search_bloc.dart';
import 'package:flutter_cache_api/core/general_screen.dart';
import 'package:flutter_cache_api/general/dialog_controller.dart';
import 'package:flutter_cache_api/helpers/singleton_storage.dart';
import 'package:flutter_cache_api/models/banner_home_model.dart';
import 'package:flutter_cache_api/network/base/response_model.dart';

class VHTBaseScreen <T extends StatefulWidget> extends GeneralScreen<T> {
  Dialog? dialog;
  bool? isLoading = false;
  bool firstLoad = true;
  bool endData = false;

  late HomeBloc homeBloc;
  late SearchScreenBloc screenBloc;
  initBloc(){
    homeBloc =HomeBloc(screen: this);
    screenBloc =SearchScreenBloc(screen: this);
  }
  disposeBloc(){
    homeBloc.dispose();
    screenBloc.dispose();
  }
   initStore()async{
    await SingletonStorage.getInstance();
  }
  @override
  void initScreen() {
    initStore();
    initBloc();
    super.initScreen();
  }
  @override
  void disposeScreen() {
    disposeBloc();
    super.disposeScreen();
  }

  void showErrorRequest(String error) {
    //log('BaseScreen errorNetwork:  $error');
    showMessage('', error);
  }
  showMessage(String title, String message) {
    DialogController(context, dialog).showBaseNotification(title, message);
  }
  void dismissDialog() {
    DialogController(context, dialog).dismissDialog();
    firstLoad = true;
  }

   Future<void>setToken()async{
     await SingletonStorage.getInstance();
      SingletonStorage.setToken('TuTokenAnoadnoiawidni-acascascascascasc -ascas sa a ');
  }
  Future<void>clearToken()async{
    await SingletonStorage.getInstance();
    SingletonStorage.clearData();
  }
}
