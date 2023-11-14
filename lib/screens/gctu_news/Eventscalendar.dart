//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'EventsCalist.dart';
//import 'package:studyssey_app/utils/styles.dart';


class ECalist extends StatelessWidget {

  const ECalist ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(

      child: Wrap(
          //scrollDirection: Axis.vertical,
          //physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(height: 10),
            EventsCal(title: 'Teaching Ends', time: 'N/A', venue: 'All Faculties', month: 'Sep', day: '24'),
            EventsCal(title: 'Revision Week', time: 'N/A', venue: 'All Faculties', month: 'Sep', day: '25'),
            EventsCal(title: 'Launch Of GCTU Basic Laws ...', time: '8:30am', venue: 'Florence Onny Aud', month: 'Sep', day: '28'),
            EventsCal(title: 'Project Defense', time: '9am', venue: 'All Faculties', month: 'Oct', day: '30'),
          ],
        ),
      );
  }
}
