import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'featured_listview.dart';

class HomeViewModel extends StatelessWidget {
  const HomeViewModel({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
        ],
      ),
    );
  }
}
