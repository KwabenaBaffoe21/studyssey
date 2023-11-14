import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';

class Filter extends StatefulWidget {
  const Filter({
    super.key,
    required this.text,
    this.top,
    this.bottom,
    this.right,
    this.left,
  });
  final String text;
  final double? top, bottom, right, left;

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 86,
      height: 19,
      child: ChoiceChip(
        selectedColor: const Color(0xff6610f2),
        backgroundColor: const Color(0xfff2f3f5),
        labelPadding: const EdgeInsets.only(
          left: -9,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        side: BorderSide.none,
        label: Text(
          widget.text,
          style: GoogleFonts.manrope(
            fontSize: 11.1,
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: isSelected,
        labelStyle: TextStyle(
          color: isSelected ? const Color(0xffffffff) : const Color(0xff6610f2),
        ),
        onSelected: (newBoolean) {
          setState(() {
            isSelected = newBoolean;
          });
        },
        showCheckmark: false,
        avatar: SvgPicture.asset(
          'images/icons/ellipse.svg',
          theme: SvgTheme(
            currentColor: isSelected == true ? color7 : color6,
          ),
        ),
        padding: EdgeInsets.only(
            top: widget.top!,
            bottom: widget.bottom!,
            left: widget.left!,
            right: widget.right!),
      ),
    );
  }
}
