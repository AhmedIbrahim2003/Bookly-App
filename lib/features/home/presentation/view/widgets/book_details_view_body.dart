import 'package:bookly_app/features/home/presentation/view/widgets/item_rate.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../data/models/book_model/volume_info.dart';
import 'book_details_appbar.dart';
import 'book_price_widget.dart';
import 'custom_book_image_box.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookInfo});

  final VolumeInfo bookInfo;

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
                imageUrl: bookInfo.imageLinks!.thumbnail!,
                imageHeight: 30.h,
                imageWidth: 42.w,
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              bookInfo.title!,
              style: TextStyle(
                fontFamily: 'GTSectraFine',
                fontSize: 23.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              bookInfo.authors![0],
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
              child: ItemRate(
                rate: bookInfo.averageRating ?? 0,
                numberOfRates: bookInfo.ratingsCount ?? 0,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            const BookPrice(),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
