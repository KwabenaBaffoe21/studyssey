import 'package:flutter/material.dart';

import '../../constant.dart';

class CardRecEvents extends StatelessWidget {
  const CardRecEvents(
      {required this.image, required this.gctuEventsWidget, super.key});

  final String image;
  final gctuEventsWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gctuEventsWidget),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color12,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        width: 260,
        height: 140,
        margin: const EdgeInsets.only(right: small),
      ),
    );
  }
}
