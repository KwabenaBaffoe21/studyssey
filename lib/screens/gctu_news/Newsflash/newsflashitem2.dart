import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../NewsGCTU.dart';
import '../newsitem.dart';

class NFItem2 extends StatelessWidget {
  const NFItem2({super.key});

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
                        image: 'assets/images/Rectangle 41.jpg',
                        issue: 'Issued by University Relations Directorate',
                        date: 'Thursday October 19, 2023',
                        paragraph:
                            '''President Nana Addo Dankwa Akufo-Addo, Friday pledged his government’s support to transform the Ghana Communication  Technology University (GCTU) into a world-class centre for training the country’s manpower in information and communication technology (ICT).

                      The University is a specialist institution mandated to train the country’s human resource needs in ICT and support the Government’s digitalisation agenda.
                      
                      President Akufo-Addo gave the assurance when the members of the Council and Management of the GCTU  paid a courtesy call on him at the Jubilee House, Accra.
                      
                      The Ghana Communication Technology University (GCTU), formerly the Ghana Telecom University College, became a public university after Parliament  passed the Ghana Communication Technology University Act, 2020 (Act 1022) into law.
                      
                      President Akufo-Addo said the University’s ambition  of becoming Ghana’s Silicon Valley to train young graduates in Robotics, Artificial intelligence and other related ICT fields was extremely significant because the acquisition of such knowledge and expertise had become the norm for survival of any country in the 21st Century.
                      
                      “It’s the new language, it’s  the new knowledge, it’s  the new sciences which we would survive in the 21st Century. We need to be on top of the new knowledge,” the President said.
                      
                      He pledged his government’s commitment to providing the necessary assistance to the new management of the University to achieve its objectives of becoming a centre of excellence for ICT.
                      
                      The digitalisation agenda of the Government is one of the most important objectives because it is the new language and knowledge for our survival in the 21st Century, he added.
                      
                      The President encouraged the new management of the University to give of their best to achieve their mandate.
                      
                      Professor Emmanuel Ohene Afoakwa, the Vice Chancellor of GCTU, in an address, said the University had made significant progress since the new management took over about two years ago, and thus, placed ninth in a recent ranking of the best universities in Ghana.
                      
                      The Vice Chancellor, who is also the Paramount Chief of Fiapre Traditional Area under stool name Obrempong Professor Kyem-Amponsah II, said the University had submitted 14 new ICT programmes for accreditation, including Robotics and Artificial intelligence.
                      
                      He said it had already secured accreditation for training young graduates in Cyber Security and assured of its determination to becoming the institution of choice for ICT education in Ghana and the West African Sub-region.
                      
                      Prof. Kofi Awusabo-Asare, the Council Chair of the University, on his part, said the Government’s intervention to absorb it as a public university had given it a massive reprieve in terms of payment of staff salaries.
                      
                      He believed that the re-engineering of the courses of the University would change the mode of training of the country’s  manpower needs and accelerate national development.He said the four satellite campuses of the University- Ho,Takoradi, Koforidua and Kumasi- would be converted into study centres aimed at training young graduates to be thinkers and producers of basic ICT equipment.
                      
                      Source: GNA ''',
                        title:
                            'President Akufo-Addo pledges support to make GCTU Ghana’s Silicon Valley'),
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
