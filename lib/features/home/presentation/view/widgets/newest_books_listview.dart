import 'package:bookly_app/features/home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view%20model/newest_books_cubit/newest_books_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'newest_books_listview_item.dart';
import 'newest_books_loading_placeholder.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is GetNewestBooksSuccessState) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: NewestBooksListViewItem(
                  bookInfo: state.books[index].volumeInfo!,
                ),
              );
            },
          );
        } else if (state is GetNewestBooksLoadingState) {
          return SizedBox(
            height: 150.h,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) =>
                  const NewestBooksLoadingPlaceholder(),
              separatorBuilder: (context, index) => SizedBox(
                height: 4.h,
              ),
              itemCount: 3,
            ),
          );
        } else {
          return const Text('An Error Happend');
        }
      },
    );
  }
}
