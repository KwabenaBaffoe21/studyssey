import 'package:flutter/material.dart';
import '../../constant.dart';

class newsitemcomp extends StatelessWidget {
  final String image, issue, date, paragraph;
  final String title;

  const newsitemcomp({
    required this.image,
    required this.issue,
    required this.date,
    required this.paragraph,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 285.56,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: textColor1),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: medium,
      ),
      Container(
        width: 324.44,
        height: 182.22,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.44),
          ),
        ),
      ),
      Container(
        width: 360,
        //height: 46.22,
        padding: const EdgeInsets.only(
          top: 11.11,
          left: 0,
          right: 58.89,
          bottom: 11.11,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              issue,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: textColor1),
            ),
            Text(
              date,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: textColor1),
            ),
          ],
        ),
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 324.44,
            child: Text(
              paragraph,
              textAlign: TextAlign.justify,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: textColor1),
            ),
          ),
        ],
      )
    ]);
  }
}
