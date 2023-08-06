import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';
import '../book_details_view.dart';
import 'custom_book_image_box.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 17.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.sp),
            child: CustomBookImageBox(
              imageHeight: 35.h,
              imageWidth: 24.w,
              onTap: () {
                myPushReplacmentNavigator(
                  context: context,
                  destination: const BookDetailsView(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
