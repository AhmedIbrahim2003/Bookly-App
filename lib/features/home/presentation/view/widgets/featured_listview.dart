import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import 'featured_listview_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 39.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.sp),
            child: const FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}