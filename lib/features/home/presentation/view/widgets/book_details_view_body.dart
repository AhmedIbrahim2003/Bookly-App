import 'package:bookly_app/features/home/presentation/view/widgets/item_rate.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/similar_books_listview.dart';
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
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomBookImageBox(
                imageHeight: 30.h,
                imageWidth: 42.w,
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'The Jungle Book',
              style: TextStyle(
                fontFamily: 'GTSectraFine',
                fontSize: 23.sp,
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
            const BookPrice(),
            SizedBox(
              height: 5.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            const SimilarBooksListView()
          ],
        ),
      ),
    );
  }
}
