import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({
    super.key,
    required this.imagePath,
    required this.text,
    required this.route,
  });

  final String imagePath, text;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, route);
      },
      child: Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(4.44)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.44),
                    topRight: Radius.circular(4.44)),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: 294.1,
                  height: 92.62,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 294.1,
                height: 50.61,
                padding: const EdgeInsets.symmetric(
                    horizontal: 23.9, vertical: 9.55),
                decoration: const BoxDecoration(
                  color: color7,
                  border: Border(
                    bottom: BorderSide(color: color1),
                    right: BorderSide(color: color1),
                    left: BorderSide(color: color1),
                  ),
                ),
                child: Text(
                  text.toUpperCase(),
                  style: GoogleFonts.manrope(
                      fontSize: 12.73,
                      fontWeight: FontWeight.w500,
                      color: textColor1),
                  softWrap: true,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
