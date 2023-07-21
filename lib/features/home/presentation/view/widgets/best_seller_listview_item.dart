import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utlis/assets.dart';
import 'item_rate.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              image: const DecorationImage(
                image: AssetImage(
                  AssetsData.bookCover,
                ),
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
                    'The Jungle Book',
                    style: TextStyle(
                      fontFamily: 'GTSectraFine',
                      fontSize: 18.sp,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  'Rudyard Kipling',
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
                      '19.99 €',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const ItemRate()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}