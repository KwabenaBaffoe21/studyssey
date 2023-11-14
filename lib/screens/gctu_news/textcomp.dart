import 'package:flutter/material.dart';

import '../../constant.dart';

class TextComp extends StatelessWidget {
  final String heading, text;

  const TextComp({required this.text, required this.heading, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 360,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(heading, style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: textColor1),),
              const SizedBox(height: 5),
              SizedBox(
                width: 300,
                child: Text(
                  text,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: textColor1),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        )
      ],
    );
  }
}
