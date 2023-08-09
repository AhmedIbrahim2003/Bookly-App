import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import 'loading_placeholder.dart';

class NewestBooksLoadingPlaceholder extends StatelessWidget {
  const NewestBooksLoadingPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyLoadingPlaceholder(
          height: 15.h,
          width: 23.w,
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyLoadingPlaceholder(
              height: 5.h,
              width: 50.w,
            ),
            const SizedBox(
              height: 3,
            ),
            MyLoadingPlaceholder(
              height: 2.h,
              width: 20.w,
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                MyLoadingPlaceholder(
                  height: 3.h,
                  width: 10.w,
                ),
                SizedBox(
                  width: 35.w,
                ),
                MyLoadingPlaceholder(
                  height: 3.h,
                  width: 15.w,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
