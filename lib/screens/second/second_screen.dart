import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_cache_api/models/slider_model.dart';
import 'package:flutter_cache_api/screens/vht_base_screen.dart';
import 'package:flutter_cache_api/widget/items/item_sliders.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();

}

class _SecondScreenState extends VHTBaseScreen<SecondScreen> {

  List<SliderModel> lstBanner = <SliderModel>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SecondScreen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            lstBanner.isNotEmpty? SizedBox(
              height: 190,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    aspectRatio: 1,
                    viewportFraction:0.5,
                    // todo with image
                    //aspectRatio: 4.0,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    height: Device.get().isPhone ? 130 : 230),
                // itemCount: (lstBanner.length / 2).round(),
                itemCount: lstBanner.length,
                itemBuilder: (BuildContext context, int itemIndex,
                    int pageViewIndex) =>
                    ItemSliders(
                      item: lstBanner[itemIndex],
                    ),
              ),

            ):Container(),
            Text(lstBanner!=null?lstBanner.toString():'ahihi h'),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  void initState() {
    super.initState();

    _getData();
  }

  _getData(){
    homeBloc.getSliderHome().then((value) => {
      log(value.toString()),
      if(mounted){
        setState(() {
          lstBanner=value;
        })
      }
    });
  }
}
