import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class ItemRate extends StatelessWidget {
  const ItemRate({super.key, required this.rate, required this.numberOfRates});

  final double rate;
  final int numberOfRates;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: HexColor('#FFDD4F'),
          size: 17,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '$rate',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
          ),
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '($numberOfRates)',
          style: TextStyle(
            fontSize: 11.sp,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
