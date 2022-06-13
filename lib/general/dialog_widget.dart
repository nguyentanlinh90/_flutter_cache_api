
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Future<bool> _onWillPop(BuildContext context) async {
  return (await showDialog(
    context: context,
    builder: (context) => new AlertDialog(),
  )) ?? false;
}
Widget generalMessage(BuildContext context,String title,String description, VoidCallback callback){
  return WillPopScope(
    onWillPop: () async => true,// todo disable back
   // onWillPop: ()=>_onWillPop(context),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
       const SizedBox(height: 20,),
        Text(title.isEmpty?'Thông báo':title, ),
        const SizedBox(height: 20,),
        Divider(height: 1,color:Colors.grey[400],),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Text(description, textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black),),
        ),
        const SizedBox(height: 30,),

        InkWell(
          onTap: callback,
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 120,
            height: 36,
            child: Center(child: Text('OK',style: TextStyle(fontSize: 17,color: Colors.blue),)),
          ),
        ),

        const SizedBox(height: 5,),
      ],
    ),
  );
}
