import 'package:bookly_app/features/home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view%20model/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';
import '../book_details_view.dart';
import 'custom_book_image_box.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is GetFeaturedBooksLoadingState) {
          return SizedBox(
            height: 39.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SizedBox(
                      width: 51.w,
                      height: 35.h,
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey[100]!.withOpacity(0.1),
                        highlightColor: Colors.grey[200]!.withOpacity(0.3),
                        child: Container(
                          color: Colors.grey[800]!,
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10.w,
                    ),
                itemCount: 3),
          );
        } else if (state is GetFeaturedBooksSuccessState) {
          return SizedBox(
            height: 39.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.sp),
                  child: CustomBookImageBox(
                    imageUrl:
                        state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                    imageHeight: 35.h,
                    imageWidth: RenderErrorBox.minimumWidth,
                    onTap: () {
                      myPushNavigator(
                        context: context,
                        destination: BookDetailsView(
                          bookInfo: state.books[index].volumeInfo!,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
        } else {
          return const Text('An Error Happend');
        }
      },
    );
  }
}
