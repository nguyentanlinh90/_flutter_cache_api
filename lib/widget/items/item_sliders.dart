import 'package:flutter/material.dart';
import 'package:flutter_cache_api/models/slider_model.dart';
import 'package:flutter_cache_api/widget/cached_network_image.dart';

class ItemSliders extends StatelessWidget {
  final SliderModel? item;
  final VoidCallback? onSelected;

  const ItemSliders({Key? key, this.item, this.onSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelected,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
          child: cachedImageRadiusAll(context,item!.banner_src!,BoxFit.cover,5),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     fit: BoxFit.fill,
        //     image: NetworkImage('${item!.banner_src}'),
        //     onError: (Object exception, StackTrace? stackTrace) {
        //       //   print('onError');
        //     },
        //   ),
        //   borderRadius: const BorderRadius.all(Radius.circular(5)),
        // ),
      ),
    );
  }
}
