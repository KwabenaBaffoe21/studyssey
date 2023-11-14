import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';

class HeadingAllSection extends StatelessWidget {
  final String text, picturePath;

  const HeadingAllSection(
      {required this.text, required this.picturePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 31.11, right: 80),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              kBackButtonIcon,
              width: 31,
              height: 31,
            ),
          ),
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: textColor1),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18.58, left: 80),
          child: GestureDetector(
            onTap: null,
            child: SvgPicture.asset(
              kBookmarkIcon,
              height: 16.75,
              width: 15.44,
            ),
          ),
        )
      ],
    );
  }
}
