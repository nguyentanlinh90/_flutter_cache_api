import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_api/widget/widget.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
 String vtvCached='VTV_Cached';
CacheManager cacheManager(){
  return CacheManager(
      Config(
        vtvCached,
        stalePeriod: const Duration(days: 7),
      )
  );
}
CachedNetworkImage cachedImage(BuildContext context,String image, BoxFit fit) {
  return CachedNetworkImage(
      placeholder: (context, url) => loadingCenterSmall(),
      errorWidget: (context, url, error) => const Icon(Icons.remove_circle_outline_sharp),
    imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: imageProvider,
        fit: fit,
      ),
   ),
       // child: CachedNetworkImageProvider(image),
      ),
    cacheManager: cacheManager(),
  );
}
CachedNetworkImage cachedImageRadiusAll(BuildContext context,String image, BoxFit fit,double radius) {
  return CachedNetworkImage(
      placeholder: (context, url) => loadingCenterSmall(),
      errorWidget: (context, url, error) => Icon(Icons.remove_circle_outline_sharp),
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
         borderRadius:  BorderRadius.all(Radius.circular(radius)),
        ),
      )
  );
}
CachedNetworkImage cachedImageRadiusTop(BuildContext context,String image, BoxFit fit,double radius) {
  return CachedNetworkImage(
      placeholder: (context, url) => loadingCenterSmall(),
      errorWidget: (context, url, error) => const Icon(Icons.remove_circle_outline_sharp),
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
          borderRadius:  BorderRadius.only(topLeft: Radius.circular(radius),topRight: Radius.circular(radius)),
        ),
      )
  );
}


Widget cachedImageItemTour(BuildContext context,String image,{ required Widget child}) {
  return CachedNetworkImage(
      placeholder: (context, url) => loadingCenterSmall(),
      errorWidget: (context, url, error) => Icon(Icons.remove_circle_outline_sharp),
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
          ),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5)),
        ),
      )
  );
}

