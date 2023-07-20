import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utlis/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 50.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: const DecorationImage(
          image: AssetImage(
            AssetsData.bookCover,
          ),
          fit: BoxFit.fill
        ),
      ),
    );
  }
}