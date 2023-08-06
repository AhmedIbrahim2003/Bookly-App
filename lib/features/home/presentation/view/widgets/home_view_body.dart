import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'best_seller_list_view.dart';
import 'custom_appbar.dart';
import 'featured_listview.dart';

class HomeViewModel extends StatelessWidget {
  const HomeViewModel({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  const FeaturedBooksListView(),
                  const SizedBox(
                    height: 49,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Best Seller',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: BestSellerListView(),
            )
          ],
        ),
      ),
    );
  }
}
