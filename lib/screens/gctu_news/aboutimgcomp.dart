import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';


class abtimg extends StatelessWidget {
  const abtimg ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 93.68,
      padding: const EdgeInsets.only(
        top: 24,
        left: 26.67,
        right: 31.11,
        bottom: 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 20,
            padding: const EdgeInsets.only(bottom: 0.52),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  //height: 27.15,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/logo.svg',

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Version 1.0.0',
            textAlign: TextAlign.justify,
            style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(color: textColor1),
          ),
        ],
      ),
    );
  }
}