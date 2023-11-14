import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.textEditingController,
    this.imagePath,
    required this.title,
    this.color,
  });

  final TextEditingController textEditingController;
  final String title;
  final Color? color;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      cursorHeight: 13.33,
      cursorColor: Theme.of(context).primaryColor,
      keyboardType: TextInputType.text,
      style:
          Theme.of(context).textTheme.displaySmall?.copyWith(color: textColor1),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 28, right: 7),
          child: SvgPicture.asset(
            imagePath!,
            width: 11.6,
            height: 11.6,
            theme: const SvgTheme(currentColor: color6),
          ),
        ),
        hintText: title,
        hintStyle:
            Theme.of(context).textTheme.displaySmall?.copyWith(color: color5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: color,
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
