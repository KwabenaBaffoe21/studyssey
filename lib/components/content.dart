import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';

class Content extends StatefulWidget {
  const Content({super.key, required this.title, required this.imagePath});

  final String imagePath, title;

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading: SvgPicture.asset(
        widget.imagePath,
        height: 20.17,
        width: 20.17,
        theme: const SvgTheme(currentColor: buttonColor),
      ),
      title: Text(
        widget.title,
        style: GoogleFonts.manrope(
          fontWeight: FontWeight.w500,
          fontSize: 13.45,
          color: textColor1,
        ),
      ),
      trailing: SvgPicture.asset(
        kRightExpandIcon,
        height: 21.13,
        width: 21.13,
      ),
      titleAlignment: ListTileTitleAlignment.threeLine,
      horizontalTitleGap: 6.72,
      minLeadingWidth: 6.72,
    );
  }
}
