// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';
import '../book_details_view.dart';
import 'item_rate.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({
    Key? key,
    required this.bookInfo,
  }) : super(key: key);

  final VolumeInfo bookInfo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        myPushNavigator(
          context: context,
          destination:  BookDetailsView(
            bookInfo: bookInfo,
          ),
        );
      },
      child: SizedBox(
        width: 100.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 130,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: NetworkImage(bookInfo.imageLinks!.thumbnail!),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50.w,
                    child: Text(
                      bookInfo.title!,
                      style: TextStyle(
                        fontFamily: 'GTSectraFine',
                        fontSize: 18.sp,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookInfo.authors![0],
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      ItemRate(
                        rate: bookInfo.averageRating ?? 0,
                        numberOfRates: bookInfo.ratingsCount ?? 0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}