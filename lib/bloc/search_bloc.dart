import 'package:flutter_cache_api/models/search_screen_model.dart';
import 'package:rxdart/rxdart.dart';

import '../screens/vht_base_screen.dart';
import 'base_bloc.dart';

class SearchScreenBloc extends BaseBloc{
  SearchScreenBloc({required VHTBaseScreen screen}) : super(screen: screen);
  final PublishSubject<SearchScreenModel> searchScreenFetcher = PublishSubject<SearchScreenModel>();

  Stream<SearchScreenModel> get searchScreenStream => searchScreenFetcher.stream;

  @override
  void dispose() {
    super.dispose();
    searchScreenFetcher.close();
  }
  // Future<SearchScreenModel> getDefaultInfoOfSearchScreen() async {
  //   SearchScreenModel? screenModel ;
  //   try{
  //     await restApi.getDefaultInfoOfSearchScreen(kLanguageDefault,apiKey).then((value) => {
  //       if(value.response!=null){
  //         screenModel =SearchScreenModel.fromJson(value.response)
  //       }
  //     });
  //   }on DioError catch (dioError) {
  //     return screenModel??SearchScreenModel();
  //   }
  //   return screenModel!;
  //
  // }

}