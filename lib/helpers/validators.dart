

import 'package:intl/intl.dart';

class Utils {
  static final Utils _singleton = Utils._internal();

  factory Utils() {
    return _singleton;
  }

  Utils._internal();

  static bool isValidEmail(String email) {
    String p = r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(email);
  }

  static String formatPrice(double? _amout){
    // MoneyFormatterOutput fo = FlutterMoneyFormatter(
    //     amount: _amout
    // ).output;

    // return fo.withoutFractionDigits;

    final oCcy = NumberFormat("#,##0", "en_US");
    return oCcy.format(_amout);
  }

  static String formatEmailForHide(String email){
    int numSpace = 4;
    String result = email.replaceRange(0, numSpace, '*' * numSpace);
    return result;
  }

  static bool isValidAgeBooking(String dayFrom, String dayTo, int yearFrom, int yearTo) {
    DateFormat dateFormat = DateFormat("dd/MM/yyyy");
    // dayTo ='11/09/2021';
    // dayFrom ='12/09/1951';
    try{
      DateTime from = dateFormat.parse(dayFrom);
      DateTime to = dateFormat.parse(dayTo);
      Duration dur =  to.difference(from);
      int age  = (dur.inDays/365).floor();
      print('differenceInYears $age');
      if(age>=yearFrom&&age<=yearTo){
        return true;
      }
      return  false;
    }on Exception catch (e){
      print('isValidAgeBooking Error $e');
      return false;
    }

  }

  static bool? isNotEmpty(String? string){

    if(string==null){
      return false;
    }
    if(string.isEmpty){
      return false;
    }
    if(string.isNotEmpty){
      return true;
    }
  }
  static bool compareTo(String a,String b){
    if(a.compareTo(b)==0)
      return true;
   return false;
  }
}
