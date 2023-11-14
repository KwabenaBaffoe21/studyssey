import 'package:flutter/material.dart';

import 'dwnlst.dart';



class DownList extends StatelessWidget {

  const DownList ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: const [
          SizedBox(height: 15),
          Download(title: 'GCTU ACT 1022 ( ACT of Parliament that Establishes the University)', url: 'https://site.gctu.edu.gh/gctu-act-2020',),
          SizedBox(height: 12),
          Download(title: 'Undergraduate Application Form', url: 'https://site.gctu.edu.gh/wp-content/uploads/gtuc/external/GCTU_Undergraduate_Admission_form_2023.pdf',),
          SizedBox(height: 12),
          Download(title: 'Student Guide', url: 'https://site.gctu.edu.gh/wp-content/uploads/gtuc/external/gtucstudentshandbook.pdf',),
          SizedBox(height: 12),
          Download(title: 'Study Abroad Application form', url: 'https://site.gctu.edu.gh/wp-content/uploads/gtuc/external/StudyAbroadApplicationForm-UK.pdf',),
        ],
      ),
    );
  }
}
