// ignore: file_names
import 'package:flutter/material.dart';
import '../constant.dart';


class LabelSectionECal extends StatelessWidget {
  final String title;
      final gctuLabPage;

  const LabelSectionECal({
    required this.gctuLabPage,
    required this.title,

    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: textColor1),),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  gctuLabPage),
              );
            },
            child: Text('See all', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color9),)),

      ],
    );
  }
}
