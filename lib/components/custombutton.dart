import 'package:flutter/material.dart';
import 'package:studyssey/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.route,
      required this.text,
      this.height,
      this.width,
      this.alignmentGeometry});

  final String text;
  final String? route;
  final double? height, width;
  final AlignmentGeometry? alignmentGeometry;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route!);
      },
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            fixedSize: MaterialStatePropertyAll(
              Size(width!, height!),
            ),
        alignment: alignmentGeometry,
          ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(color: textColor2),
      ),
    );
  }
}
