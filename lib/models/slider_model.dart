
import 'package:flutter_cache_api/network/base/response_model.dart';

class SliderModel {
  String? objectid;
  String? promotionId;
  int? typeid;
  String? image;
  String? title;
  String? titleen;
  String? description;
  String? descriptionen;
  String? linkInsideApp;
  String? banner_name;
  String? banner_src;
  String? banner_hyperlink;


  SliderModel(
      {this.objectid,
      this.promotionId,
      this.typeid,
      this.image,
      this.title,
      this.titleen,
      this.description,
      this.descriptionen,
      this.linkInsideApp,
      this.banner_name,
      this.banner_src,
      this.banner_hyperlink
      });

  SliderModel.fromJson(Map<String, dynamic> json) {
    objectid = json['objectid'];
    promotionId = json['promotion_id'];
    typeid = json['typeid'];
    image = json['image'];
    title = json['title'];
    titleen = json['titleen'];
    description = json['description'];
    descriptionen = json['descriptionen'];
    linkInsideApp = json['LinkInsideApp'];
    banner_name = json['banner_name'];
    banner_src = json['banner_src'];
    banner_hyperlink = json['banner_hyperlink'];
  }
  List<SliderModel> listFromJson(ResponseModel parserModel){
    List<SliderModel> list =<SliderModel>[];
    if (parserModel.response != null) {
      parserModel.response.forEach((v) {
        list.add(SliderModel.fromJson(v));
      });
    }
    return list;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['objectid'] = objectid;
    data['promotion_id'] = promotionId;
    data['typeid'] = typeid;
    data['image'] = image;
    data['title'] = title;
    data['titleen'] = titleen;
    data['description'] = description;
    data['descriptionen'] = descriptionen;
    data['LinkInsideApp'] = linkInsideApp;
    data['banner_name'] = banner_name;
    data['banner_src'] = banner_src;
    data['banner_hyperlink'] = banner_hyperlink;
    return data;
  }

  @override
  String toString() {
    return '{banner_name: $banner_name}';
  }
}
