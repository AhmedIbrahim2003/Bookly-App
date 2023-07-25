import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';
import '../../../../../core/utlis/assets.dart';
import '../book_details_view.dart';

class CustomBookImageBox extends StatelessWidget {
  const CustomBookImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        myPushNavigator(
          context: context,
          destination: const BookDetailsView(),
        );
      },
      child: Container(
        height: 35.h,
        width: RenderErrorBox.minimumWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: const DecorationImage(
            image: AssetImage(
              AssetsData.bookCover,
            ),
            fit: BoxFit.fitHeight
          ),
        ),
      ),
    );
  }
}