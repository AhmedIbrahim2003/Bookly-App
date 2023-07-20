import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utlis/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
        vertical: 2.h
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 2.5.h,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30.sp,
            ),
          )
        ],
      ),
    );
  }
}
