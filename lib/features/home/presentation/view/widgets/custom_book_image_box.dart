import 'package:flutter/cupertino.dart';

import '../../../../../core/utlis/assets.dart';

class CustomBookImageBox extends StatelessWidget {
  const CustomBookImageBox({super.key, required this.imageHeight, required this.imageWidth, required this.onTap});

  final double imageHeight;
  final double imageWidth;
  final Null Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: imageHeight,
        width: imageWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: const DecorationImage(
            image: AssetImage(
              AssetsData.bookCover,
            ),
            fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}