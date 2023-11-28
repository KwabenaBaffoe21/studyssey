import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

// ignore: must_be_immutable
class CustomSearchBar extends StatefulWidget {
  CustomSearchBar({
    super.key,
    required this.textEditingController,
    this.imagePath,
    required this.title,
    this.color,
    required this.searchName,
  });

  final TextEditingController textEditingController;
  final String title;
  final Color? color;
  final String? imagePath;
  // ignore: prefer_typing_uninitialized_variables
  var searchName;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(context) {
    return TextField(
      onChanged: (value) {
        setState(() {
          widget.searchName = value;
        });
      },
      controller: widget.textEditingController,
      cursorHeight: 13.33,
      cursorColor: Theme.of(context).primaryColor,
      keyboardType: TextInputType.text,
      style:
          Theme.of(context).textTheme.displaySmall?.copyWith(color: textColor1),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 28, right: 7),
          child: SvgPicture.asset(
            widget.imagePath!,
            width: 11.6,
            height: 11.6,
            theme: const SvgTheme(currentColor: color6),
          ),
        ),
        hintText: widget.title,
        hintStyle:
            Theme.of(context).textTheme.displaySmall?.copyWith(color: color5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: widget.color,
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
