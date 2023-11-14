import 'package:flutter/material.dart';
import 'package:studyssey/constant.dart';

class TransactionRec extends StatelessWidget {
  final String dateTime, amount, sem, title;

  const TransactionRec(
      {required this.dateTime,
      required this.amount,
      required this.title,
      required this.sem,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 0.96,
                color: Color(0xFF9F9F9F),
              ),
              borderRadius: BorderRadius.circular(4.44),

            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    height: 16.34,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: title,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: color9),
                          ),
                          TextSpan(
                            text: sem,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: color12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 100,
                    height: 13,
                    child: Text(
                      dateTime,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: textColor1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                amount,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: color9),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: xSmall,
        ),
      ],
    );
  }
}
