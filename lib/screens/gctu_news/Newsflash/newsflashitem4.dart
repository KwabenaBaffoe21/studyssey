import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../NewsGCTU.dart';
import '../newsitem.dart';

class NFItem4 extends StatelessWidget {
  const NFItem4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20, right: medium, left: medium),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewsGCTU()),
                          );
                        },
                        child: SvgPicture.asset(
                          'assets/svg/back.svg',
                          width: 15,
                          height: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 90),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'GCTU News',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: textColor1),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: small),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(height: small),
                    Row(
                      children: [
                        Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'News flash',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: textColor1),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 200),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/save.svg',
                              width: 15.44,
                              height: 16.75,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const newsitemcomp(
                        image: 'assets/images/image 34.jpg',
                        issue: 'Issued by University Relations Office',
                        date: 'October 12, 2023',
                        paragraph:
                            '''The Department of Accounting, Banking and Finance has organized a training workshop in modern accounting software for faculty and students of the Department and connected stakeholders at the Business School Entrepreneurship Hub from August 21 to 26, 2023.

                            The programme which was organized on the theme, “Millennium Business Solutions,” was aimed at equipping faculty with the knowledge and skills in modern accounting software relevant for the automation of accounting processes and be able to train students in that direction.
                            
                            Speaking at the training session, the Primary Facilitator of the training and General Manager of Prymage, Mr. Samuel Anim said that the training would go a long way towards equipping participants to compete strongly with other professionals in the developed world, especially with the benefit of complementing participants’ current capacities in the field.
                            
                            In his remarks at the training programme, the Dean of Business School, Prof. George Oppong Appiagyei Ampong re-iterated that the training was to acquaint students with some of the essential industry requirements in terms of the automated accounting process, and also, to equip faculty members with the requisite knowledge to train industry-standard students. “In this digital age, the skills that are required for our business students to meet the changing times is what we are providing them with,” Prof. Ampong said.
                            
                            The Head of Accounting, Banking and Finance, Dr. Emmanuel Attah Kumah Amponsah, who was instrumental in organizing the event, emphasized the timeliness of the training session, coinciding with the introduction of a Master of Science in Forensic Auditing and Accounting degree. He asserted that similar capacity building and professional development programmes would be designed to cater for other areas of specialization in the Business School.''',
                        title:
                            'Faculty And Students Of Business School Trained In Modern Accounting Software'),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
