import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:memory_lifes/app/constants/barrel_constants.dart';
import 'package:memory_lifes/presentation/common_widgets/barrel_common_widgets.dart';

class WidgetCachedImage extends StatelessWidget {
  WidgetCachedImage({this.url, this.color, this.fit});

  final String url;
  final Color color;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CachedNetworkImage(
        imageUrl: url,
        placeholder: (context, url) {
          return Center(child: WidgetCircleProgress());
        },
        errorWidget: (context, url, error) {
          return Center(child: WidgetCachedImageError());
        },
        color: color,
        fit: fit ?? AppValue.IMAGE_FIT_MODE,
        filterQuality: FilterQuality.low,
      ),
    );
  }
}
