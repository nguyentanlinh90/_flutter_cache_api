import 'dart:convert';

import 'package:flutter_cache_api/network/base/response_model.dart';


class ObjectModel{
  String? id;
  String? name;

  ObjectModel(
      {this.id,
      this.name,});

  ObjectModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
  List<ObjectModel> listTienNghiFromJson(ResponseModel parserModel){
    List<ObjectModel> list =<ObjectModel>[];
    if (parserModel.response != null) {
      parserModel.response.forEach((v) {
        list.add(ObjectModel.fromJson(v));
      });
    }
    return list;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
List<ObjectModel> listCountriesFromJson(ResponseModel parserModel){
  List<ObjectModel> list =<ObjectModel>[];
  if (parserModel.response != null) {
    parserModel.response.forEach((v) {
      list.add(ObjectModel.fromJson(v));
    });
  }
  return list;
}

List<ObjectModel> sortTour = [
  ObjectModel(id: '0',name: 'Nam'),
  ObjectModel(id: '1',name: 'Nữ'),
  ObjectModel(id: '2',name: 'Nữ'),
  ObjectModel(id: '3',name: 'Nữ'),
];
List<ObjectModel> chairsTypePlanes = [
  ObjectModel(id: '0',name: 'Economy'),
  ObjectModel(id: '1',name: 'Business'),
];
List<ObjectModel> chairsTypeCar = [
  ObjectModel(id: '0',name: 'Ghế ngồi'),
  ObjectModel(id: '1',name: 'Giường nầm'),
];

List<ObjectModel> rooms = [
  ObjectModel(id: '1',name: '1 Phòng'),
  ObjectModel(id: '2',name: '2 Phòng'),
  ObjectModel(id: '3',name: '3 Phòng'),
  ObjectModel(id: '4',name: '4 Phòng'),
];
List<ObjectModel> getGender = [
  ObjectModel(id: '0',name: 'Nam'),
  ObjectModel(id: '1',name: 'Nữ'),
];
List<ObjectModel> getListDongTour = [
  ObjectModel(id: '0',name: 'Tất cả'),
  ObjectModel(id: '1',name: 'Cao cấp'),
  ObjectModel(id: '2',name: 'Tiêu chuẩn'),
  ObjectModel(id: '3',name: 'Tiết kiệm'),
  ObjectModel(id: '4',name: 'Giá tốt'),
];

List<ObjectModel> getListPriceTrongNuoc = [
  ObjectModel(id: '0',name: 'Tất cả'),
  ObjectModel(id: '25',name: 'Dưới 1 triệu'),
  ObjectModel(id: '26',name: '1- 2 triệu'),
  ObjectModel(id: '27',name: '2- 4 triệu'),
  ObjectModel(id: '28',name: '4- 6 triệu'),
  ObjectModel(id: '29',name: '6- 10 triệu'),
  ObjectModel(id: '30',name: 'Trên 10 triệu')
];

List<ObjectModel> getListPriceNuocNgoai = [
  ObjectModel(id: '0',name: 'Tất cả'),
  ObjectModel(id: '1',name: 'Dưới 3 triệu'),
  ObjectModel(id: '2',name: '3- 7 triệu'),
  ObjectModel(id: '9',name: '7- 12 triệu'),
  ObjectModel(id: '10',name: '12- 15 triệu'),
  ObjectModel(id: '11',name: '15- 18 triệu'),
  ObjectModel(id: '12',name: '18- 22 triệu'),
  ObjectModel(id: '13',name: '22- 32 triệu'),
  ObjectModel(id: '14',name: 'Trên 32 triệu'),
];

List<ObjectModel> getListDeparture = [
  ObjectModel(id: '1',name: 'Hồ Chí Minh'),
  ObjectModel(id: '3',name: 'Hà Nội'),
  ObjectModel(id: '32',name: 'Bạc Liêu'),
  ObjectModel(id: '33',name: 'Bảo Lộc'),
  ObjectModel(id: '7',name: 'Bình Dương'),
  ObjectModel(id: '18',name: 'Buôn Ma Thuột'),
  ObjectModel(id: '20',name: 'Cà Mau'),
  ObjectModel(id: '5',name: 'Cần Thơ'),
  ObjectModel(id: '24',name: 'Đà Lạt'),
  ObjectModel(id: '4',name: 'Đà Nẵng'),
  ObjectModel(id: '12',name: 'Đồng Nai'),
  ObjectModel(id: '34',name: 'Đồng Tháp'),
  ObjectModel(id: '6',name: 'Hải Phòng'),
  ObjectModel(id: '10',name: 'Huế'),
  ObjectModel(id: '39',name: 'Long An'),
  ObjectModel(id: '14',name: 'Long Xuyên'),
  ObjectModel(id: '8',name: 'Nha Trang'),
  ObjectModel(id: '13',name: 'Phú Quốc'),
  ObjectModel(id: '30',name: 'Quảng Bình'),
  ObjectModel(id: '15',name: 'Quảng Ngãi'),
  ObjectModel(id: '17',name: 'Quảng Ninh'),
  ObjectModel(id: '11',name: 'Quy Nhơn'),
  ObjectModel(id: '22',name: 'Rạch Giá'),
  ObjectModel(id: '35',name: 'Sóc Trăng'),
  ObjectModel(id: '40',name: 'Thái Nguyên'),
  ObjectModel(id: '29',name: 'Thanh Hóa'),
  ObjectModel(id: '38',name: 'TripU'),
  ObjectModel(id: '19',name: 'Vinh'),
  ObjectModel(id: '16',name: 'Vũng Tàu'),
];

List<ObjectModel> getListDestinationTrongNuoc = [
  ObjectModel(id: '0',name: 'Tất cả'),
  ObjectModel(id: '99',name: 'An Giang'),
  ObjectModel(id: '362',name: 'Bắc Giang'),
  ObjectModel(id: '130',name: 'Bắc Kạn'),
  ObjectModel(id: '206',name: 'Bạc Liêu'),
  ObjectModel(id: '33',name: 'Bắc Ninh'),
  ObjectModel(id: '188',name: 'Bến Tre'),
  ObjectModel(id: '137',name: 'Cà Mau'),
  ObjectModel(id: '56',name: 'Cần Thơ'),
  ObjectModel(id: '129',name: 'Cao Bằng'),
  ObjectModel(id: '192',name: 'Côn Đảo'),
  ObjectModel(id: '42',name: 'Đà Nẵng'),
  ObjectModel(id: '341',name: 'Đắk Nông'),
  ObjectModel(id: '187',name: 'Điện Biên'),
  ObjectModel(id: '345',name: 'Đồng Nai'),
  ObjectModel(id: '199',name: 'Đồng Tháp'),
  ObjectModel(id: '108',name: 'Nghệ An'),
  ObjectModel(id: '135',name: 'Hà Giang'),
  ObjectModel(id: '32',name: 'Hạ Long'),
  ObjectModel(id: '361',name: 'Hà Nam'),
  ObjectModel(id: '29',name: 'Hà Nội'),
  ObjectModel(id: '36',name: 'Hà Tây'),
  ObjectModel(id: '59',name: 'Hà Tiên'),
  ObjectModel(id: '229',name: 'Hà Tĩnh'),
  ObjectModel(id: '30',name: 'Hải Phòng'),
  ObjectModel(id: '197',name: 'Hồ Chí Minh'),
  ObjectModel(id: '363',name: 'Hòa Bình'),
  ObjectModel(id: '39',name: 'Huế'),
  ObjectModel(id: '193',name: 'Kiên Giang'),
  ObjectModel(id: '48',name: 'Kon Tum'),
  ObjectModel(id: '37',name: 'Lạng Sơn'),
  ObjectModel(id: '38',name: 'Lào Cai'),
  ObjectModel(id: '214',name: 'Long An'),
  ObjectModel(id: '360',name: 'Móng Cái'),
  ObjectModel(id: '232',name: 'Nam Định'),
  ObjectModel(id: '44',name: 'Nha Trang'),
  ObjectModel(id: '35',name: 'Ninh Bình'),
  ObjectModel(id: '106',name: 'Ninh Thuận'),
  ObjectModel(id: '49',name: 'Pleiku'),
  ObjectModel(id: '51',name: 'Phan Thiết'),  
  ObjectModel(id: '54',name: 'Phú Quốc'),
  ObjectModel(id: '34',name: 'Phú Thọ'),
  ObjectModel(id: '121',name: 'Phú Yên'),
  ObjectModel(id: '41',name: 'Quảng Bình'),
  ObjectModel(id: '198',name: 'Quảng Ngãi'),
  ObjectModel(id: '43',name: 'Quảng Nam'),
  ObjectModel(id: '196',name: 'Quảng Ninh'),
  ObjectModel(id: '40',name: 'Quảng Trị'),
  ObjectModel(id: '133',name: 'Thanh Hóa'),
  ObjectModel(id: '141',name: 'Quy Nhơn'),
  ObjectModel(id: '58',name: 'Sóc Trăng'),
  ObjectModel(id: '134',name: 'Sơn La'),
  ObjectModel(id: '189',name: 'Tây Bắc'),
  ObjectModel(id: '221',name: 'Tây Nguyên'),
  ObjectModel(id: '203',name: 'Tây Ninh'),
  ObjectModel(id: '55',name: 'Tiền Giang'),
  ObjectModel(id: '213',name: 'Trà Vinh'),
  ObjectModel(id: '233',name: 'Thái Bình'),
  ObjectModel(id: '243',name: 'Thái Nguyên'),
  ObjectModel(id: '133',name: 'Thanh Hóa'),
  ObjectModel(id: '57',name: 'Vĩnh Long'),
  ObjectModel(id: '53',name: 'Vũng Tàu'),
  ObjectModel(id: '231',name: 'Yên Bái'),
];

List<ObjectModel> getListDestinationNuocNgoai = [
  ObjectModel(id: '0',name: 'Tất cả'),
  ObjectModel(id: '271',name: 'Abu Dhabi'),
  ObjectModel(id: '14',name: 'Ai Cập'),
  ObjectModel(id: '283',name: 'Ajman'),
  ObjectModel(id: '346',name: 'Al Ain'),
  ObjectModel(id: '365',name: 'Albania'),
  ObjectModel(id: '98',name: 'Ấn Độ'),
  ObjectModel(id: '169',name: 'Anh'),
  ObjectModel(id: '170',name: 'Áo'),
  ObjectModel(id: '127',name: 'Argentina'),
  ObjectModel(id: '278',name: 'Azerbaijan'),
  ObjectModel(id: '160',name: 'Ba Lan'),
  ObjectModel(id: '220',name: 'Bhutan'),
  ObjectModel(id: '168',name: 'Bỉ'),
  ObjectModel(id: '157',name: 'Bồ Đào Nha'),
  ObjectModel(id: '249',name: 'Bosnia'),
  ObjectModel(id: '126',name: 'Brazil'),
  ObjectModel(id: '102',name: 'Brunei'),
  ObjectModel(id: '281',name: 'Bulgaria'),
  ObjectModel(id: '5',name: 'Campuchia'),
  ObjectModel(id: '114',name: 'Canada'),
  ObjectModel(id: '245',name: 'Croatia'),
  ObjectModel(id: '125',name: 'Cuba'),
  ObjectModel(id: '128',name: 'Chile'),
  ObjectModel(id: '110',name: 'Đài Loan'),
  ObjectModel(id: '152',name: 'Đan Mạch'),
  ObjectModel(id: '270',name: 'Dubai'),
  ObjectModel(id: '167',name: 'Đức'),
  ObjectModel(id: '279',name: 'Georgia'),
  ObjectModel(id: '103',name: 'Nga'),
  ObjectModel(id: '166',name: 'Hà Lan'),
  ObjectModel(id: '11',name: 'Hàn Quốc'),
  ObjectModel(id: '7',name: 'Hồng Kông & Macau'),
  ObjectModel(id: '161',name: 'Hungary'),
  ObjectModel(id: '150',name: 'Hy Lạp'),
  ObjectModel(id: '111',name: 'Indonesia'),
  ObjectModel(id: '251',name: 'Iran'),
  ObjectModel(id: '112',name: 'Israel'),
  ObjectModel(id: '211',name: 'Jordan'),
  ObjectModel(id: '138',name: 'Kazakhstan'),
  ObjectModel(id: '209',name: 'Kenya'),
  ObjectModel(id: '113',name: 'Lào'),
  ObjectModel(id: '185',name: 'Luxembourg'),
  ObjectModel(id: '246',name: 'Madagascar'),
  ObjectModel(id: '9',name: 'Malaysia'),
  ObjectModel(id: '131',name: 'Maldives'),
  ObjectModel(id: '215',name: 'Malta'),
  ObjectModel(id: '140',name: 'Mauritius'),
  ObjectModel(id: '217',name: 'Mexico'),
  ObjectModel(id: '119',name: 'Mông Cổ'),
  ObjectModel(id: '204',name: 'Monaco'),
  ObjectModel(id: '364',name: 'Montenegro'),
  ObjectModel(id: '272',name: 'Morocco'),
  ObjectModel(id: '13',name: 'Mỹ - Hoa Kỳ'),
  ObjectModel(id: '117',name: 'Myanmar'),
  ObjectModel(id: '151',name: 'Na Uy'),
  ObjectModel(id: '201',name: 'Nam Mỹ'),
  ObjectModel(id: '15',name: 'Nam Phi'),
  ObjectModel(id: '123',name: 'Nepal'),
  ObjectModel(id: '115',name: 'New Zealand'),
  ObjectModel(id: '92',name: 'Nhật Bản'),
  ObjectModel(id: '366',name: 'North Macedonia'),
  ObjectModel(id: '218',name: 'Oman'),
  ObjectModel(id: '216',name: 'Panama'),
  ObjectModel(id: '207',name: 'Peru'),
  ObjectModel(id: '154',name: 'Phần Lan'),
  ObjectModel(id: '149',name: 'Pháp'),
  ObjectModel(id: '120',name: 'Philippines'),
  ObjectModel(id: '280',name: 'Romania'),
  ObjectModel(id: '158',name: 'Scotland'),
  ObjectModel(id: '162',name: 'Séc'),
  ObjectModel(id: '250',name: 'Serbia'),
  ObjectModel(id: '282',name: 'Sharjah'),
  ObjectModel(id: '10',name: 'Singapore'),
  ObjectModel(id: '155',name: 'Slovakia'),
  ObjectModel(id: '244',name: 'Slovenia'),
  ObjectModel(id: '210',name: 'Sri Lanka'),
  ObjectModel(id: '273',name: 'Tasmania'),
  ObjectModel(id: '165',name: 'Tây Ban Nha'),
  ObjectModel(id: '205',name: 'Tây Tạng'),
  ObjectModel(id: '124',name: 'Tour Du Thuyền'),
  ObjectModel(id: '219',name: 'Triều Tiên'),
  ObjectModel(id: '101',name: 'Trung Đông'),
  ObjectModel(id: '146',name: 'Trung Mỹ'),
  ObjectModel(id: '6',name: 'Trung Quốc'),
  ObjectModel(id: '8',name: 'Thái Lan'),
  ObjectModel(id: '159',name: 'Thổ Nhĩ Kỳ'),
  ObjectModel(id: '153',name: 'Thụy Điển'),
  ObjectModel(id: '164',name: 'Thụy Sĩ'),
  ObjectModel(id: '12',name: 'Úc'),
  ObjectModel(id: '247',name: 'Uzbekistan'),
  ObjectModel(id: '200',name: 'Vatican'),
  ObjectModel(id: '163',name: 'Ý'),
];


//ObjectModel(id: '',name: ''),