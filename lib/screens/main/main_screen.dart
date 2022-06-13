
import 'package:flutter/material.dart';
import 'package:flutter_cache_api/models/banner_home_model.dart';
import 'package:flutter_cache_api/screens/second/second_screen.dart';
import 'package:flutter_cache_api/widget/cached_network_image.dart';

import '../vht_base_screen.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends VHTBaseScreen<MyHomePage> {
   BannerHome? bannerTop;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(bannerTop!=null?bannerTop.toString():'ahihi'),
           const SizedBox(height: 20,),
            bannerTop!=null?
            Container(
              height: 190,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     fit: BoxFit.fill, //BoxFit.cover
              //     image: NetworkImage('${bannerTop!.banner_src}'),
              //     onError: (Object exception, StackTrace? stackTrace) {},
              //   ),
              // ),
              child: cachedImage(context,bannerTop!.banner_src!,BoxFit.cover),

            ):
            Container(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addScreen(const SecondScreen());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
  @override
  void dispose() {
    clearToken();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    _getData();
  //  getData();
  }

  _getData()async{
  await  homeBloc.getBannerTop().then((value) => {
      if(mounted){
        setState(() {
          bannerTop=value;
        })
      }
    });
  await  homeBloc.getSliderHome().then((value) => {

    });
    //setToken();
  }

}