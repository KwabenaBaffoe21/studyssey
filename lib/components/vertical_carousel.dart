import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';

class VerticalCarousel extends StatelessWidget {
  const VerticalCarousel(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.route});

  final String imagePath, text;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 22.2),
        child: Container(
          width: 310.11,
          height: 57.64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.44),
            border: Border.all(color: borderColor2)
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.44),
                child: Image.asset(
                  imagePath,
                  width: 59.46,
                  height: 57.64,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.22),
                child: Text(
                  text.toUpperCase(),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.33,
                    color: textColor1,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                kMoreVert,
                width: 23.05,
                height: 23.05,
                theme: const SvgTheme(
                  currentColor: color1,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
