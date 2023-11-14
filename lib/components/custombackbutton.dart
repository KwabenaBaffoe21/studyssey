import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constant.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: SvgPicture.asset(
        kBackButtonIcon,
        height: 31,
        width: 31,
        theme: const SvgTheme(
          currentColor: color1,
        ),
      ),
    );
  }
}
