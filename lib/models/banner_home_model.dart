
import 'package:flutter_cache_api/network/base/response_model.dart';

class BannerHome{
  String? banner_name;
  String? banner_src;
  String? banner_hyperlink;


  BannerHome({this.banner_name, this.banner_src, this.banner_hyperlink});

  BannerHome.fromJson(Map<String, dynamic> json) {
    banner_name = json['banner_name'];
    banner_src = json['banner_src'];
    banner_hyperlink = json['banner_hyperlink']??"";

  }
  List<BannerHome> listFromJson(ResponseModel parserModel){
    List<BannerHome> list =<BannerHome>[];
    if (parserModel.response.toString().isNotEmpty) {
      parserModel.response.forEach((v) {
        list.add(BannerHome.fromJson(v));
      });
    }
    return list;
  }

  @override
  String toString() {
    return 'BannerHome{banner_name: $banner_name, banner_src: $banner_src, banner_hyperlink: $banner_hyperlink}';
  }
}