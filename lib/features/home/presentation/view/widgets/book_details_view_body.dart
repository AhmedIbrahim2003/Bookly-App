import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'book_details_appbar.dart';
import 'featured_listview_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: const Column(
          children: [
            BookDetailsCustomAppBar(),
            CustomBookImageBox(),
          ],
        ),
      ),
    );
  }
}
