import 'package:bookly_app/features/home/presentation/view/widgets/item_rate.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'book_details_appbar.dart';
import 'book_price_widget.dart';
import 'custom_book_image_box.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          children: [
            const BookDetailsCustomAppBar(),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: CustomBookImageBox(),
            ),
            const SizedBox(
              height: 45,
            ),
            Text(
              'The Jungle Book',
              style: TextStyle(
                fontFamily: 'GTSectraFine',
                fontSize: 27.sp,
              ),
            ),
            Text(
              'Rudyard Kipling',
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              width: 27.w,
              child: const ItemRate(),
            ),
            SizedBox(
              height: 5.h,
            ),
            const BookPrice()
          ],
        ),
      ),
    );
  }
}
