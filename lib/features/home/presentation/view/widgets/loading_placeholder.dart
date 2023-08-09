import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyLoadingPlaceholder extends StatelessWidget {
  const MyLoadingPlaceholder(
      {super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, //15.h,
      width: width, //RenderErrorBox.minimumWidth,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[100]!.withOpacity(0.1),
        highlightColor: Colors.grey[200]!.withOpacity(0.3),
        child: Container(
          color: Colors.grey[800]!,
        ),
      ),
    );
  }
}