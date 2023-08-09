import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';

import 'loading_placeholder.dart';

class CustomBookImageBox extends StatelessWidget {
  const CustomBookImageBox({
    super.key,
    required this.imageHeight,
    required this.imageWidth,
    required this.onTap,
    required this.imageUrl,
  });

  final String imageUrl;
  final double imageHeight;
  final double imageWidth;
  final Null Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CachedNetworkImage(
        height: imageHeight,
        width: imageWidth,
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
          ),
        ),
        placeholder: (context, url) => MyLoadingPlaceholder(
          height: 35.h,
          width: RenderErrorBox.minimumWidth,
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
