
import 'object_model.dart';

class SearchScreenModel {
  List<ObjectModel>? listDeparture;
  List<ObjectModel>? listDestinationDM;
  List<ObjectModel>? listDestinationOB;
  List<ObjectModel>? listPriceDM;
  List<ObjectModel>? listPriceOB;
  List<ObjectModel>? listDongTour;

  SearchScreenModel(
      {this.listDeparture,
      this.listDestinationDM,
      this.listDestinationOB,
      this.listPriceDM,
      this.listPriceOB,
      this.listDongTour});

  SearchScreenModel.fromJson(Map<String, dynamic> json) {
    if (json['listDeparture'] != null) {
      listDeparture = <ObjectModel>[];
      json['listDeparture'].forEach((json) {
        final model = ObjectModel()
          ..id = json['departureID']
          ..name = json['departureName'];

        listDeparture!.add(model);
      });
    }
    if (json['listDestination_DM'] != null) {
      listDestinationDM = <ObjectModel>[];
      json['listDestination_DM'].forEach((v) {
        final model = ObjectModel()
          ..id = v['group_id']
          ..name = v['group_name'];

        listDestinationDM!.add(model);
      });
    }
    if (json['listDestination_OB'] != null) {
      listDestinationOB = <ObjectModel>[];
      json['listDestination_OB'].forEach((v) {
        final model = ObjectModel()
          ..id = v['group_id']
          ..name = v['group_name'];

        listDestinationOB!.add(model);
      });
    }
    if (json['listPrice_DM'] != null) {
      listPriceDM = <ObjectModel>[];
      json['listPrice_DM'].forEach((v) {
        listPriceDM!.add(ObjectModel.fromJson(v));
      });
    }
    if (json['listPrice_OB'] != null) {
      listPriceOB = <ObjectModel>[];
      json['listPrice_OB'].forEach((v) {
        listPriceOB!.add(ObjectModel.fromJson(v));
      });
    }
    if (json['listDongTour'] != null) {
      listDongTour = <ObjectModel>[];
      json['listDongTour'].forEach((v) {
        listDongTour!.add(ObjectModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (listDeparture != null) {
      data['listDeparture'] =
          listDeparture!.map((v) => v.toJson()).toList();
    }
    if (listDestinationDM != null) {
      data['listDestination_DM'] =
          listDestinationDM!.map((v) => v.toJson()).toList();
    }
    if (listDestinationOB != null) {
      data['listDestination_OB'] =
          listDestinationOB!.map((v) => v.toJson()).toList();
    }
    if (listPriceDM != null) {
      data['listPrice_DM'] = listPriceDM!.map((v) => v.toJson()).toList();
    }
    if (listPriceOB != null) {
      data['listPrice_OB'] = listPriceOB!.map((v) => v.toJson()).toList();
    }
    if (listDongTour != null) {
      data['listDongTour'] = listDongTour!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
