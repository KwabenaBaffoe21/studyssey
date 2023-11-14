import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey/constant.dart';

class SIPHomeTile extends StatefulWidget {
  const SIPHomeTile({
    super.key,
    required this.title,
    required this.imagePath,
    required this.width,
    required this.height,
    required this.imageWidth,
    required this.imageHeight,
    required this.color,
    required this.route,
  });

  final String title, imagePath, route;
  final double width, height, imageWidth, imageHeight;
  final Color color;

  @override
  State<SIPHomeTile> createState() => _SIPHomeTileState();
}

class _SIPHomeTileState extends State<SIPHomeTile> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, widget.route);
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
        decoration: BoxDecoration(
          
          color: widget.color,
          borderRadius:
              BorderRadius.circular(10), 
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SIP',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: textColor1),
            ),
            const SizedBox(width: 5),
            SizedBox(
              width: 221,
              height: 100,
              child: SvgPicture.asset(kHomeTileImage5),
            ),
          ],
        ),
      ),
    );
  }
}
