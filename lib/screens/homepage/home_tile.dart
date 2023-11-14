import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTile extends StatefulWidget {
  const HomeTile({
    super.key,
    required this.title,
    required this.imagePath,
    required this.width,
    required this.height,
    required this.imageWidth,
    required this.imageHeight,
    required this.color,
    required this.textColor,
    required this.route,
  });

  final String title, imagePath;
  final double width, height, imageWidth, imageHeight;
  final Color color, textColor;
  final String route;

  @override
  State<HomeTile> createState() => _HomeTileState();
}

class _HomeTileState extends State<HomeTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, widget.route);
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: ShapeDecoration(
          color: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: widget.textColor),
            ),
            const SizedBox(height: 9),
            SizedBox(
              width: widget.imageWidth,
              height: widget.imageHeight,
              child: SvgPicture.asset(widget.imagePath),
            ),
          ],
        ),
      ),
    );
  }
}
