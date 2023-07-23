import 'package:bookly_app/core/utlis/assets.dart';
import 'package:fancy_text_reveal/fancy_text_reveal.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';
import '../../../../home/presentation/view/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        myPushReplacmentNavigator(context: context, destination: const HomeView());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        Center(
          child: FancyTextReveal(
            child: Text(
              'Read Free Books',
              style: TextStyle(fontSize: 30.sp),
            ),
          ),
        )
      ],
    );
  }
}
