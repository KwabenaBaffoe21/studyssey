import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../NewsGCTU.dart';
import '../newsitem.dart';

class NFItem3 extends StatelessWidget {
  const NFItem3({super.key});

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
                                MaterialPageRoute(builder: (context) => const NewsGCTU()),
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
                        Text('GCTU News', style:  Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: textColor1),),
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
                                    Text('News flash', style:  Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: textColor1),),
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
                            image: 'assets/images/Business-school-retirement1.jpg',
                            issue: 'Issued by University Relations Offiec',
                            date: 'September 18, 2023',
                            paragraph:
                            '''The Department of Management Studies’ Welfare Committee has organized a seminar focused on the critical importance of early retirement planning for a secure and comfortable future at the Business School on Wednesday 13th September 2023.
                          
                          The seminar which witnessed three esteemed speakers, including Ms. Sharon Aseye Amenumey from Databank Ltd, Mrs. Christine Adjei Mensah from the Salvation Army Medical Center, and Mrs. Cynthia Narh aimed at providing invaluable insights into financial management, health management, and the intricacies of Ghana’s social security system.
                          
                          Ms. Amenumey who made the first presentation on financial management for retirement planning, discussed several important points. Key among them were the financial stages of life, barriers to retirement planning, steps to properly manage finances and the importance of retirement planning indicating that financial discipline was critical in ensuring financial independence and security.
                          
                          “Discipline is one of the things you need to uphold if you want to be able to plan very well for your retirement.”
                          Mrs. Mensah, the second speaker, emphasized three crucial points including, investing in one’s health, caring about one’s body and making good life choices in respect of diet, exercise, good rest and avoiding lifestyles like smoking and alcoholism that could negatively impact one’s future life.
                          
                          Christine emphasized, “What you do today, to your body, will be what you have in 20 years time. So if you want to have a retirement in good health, then in your youth, you have to take care of your body, because that is all you have.”
                          She also stressed the significance of regular medical checkups and vaccinations to maintain health. She highlighted the availability of vaccines for diseases like Hepatitis B, HPV, and COVID-19. She also encouraged females to undergo mammograms and pap smears, while males should consider prostate examinations as they age.''',
                            title:
                            'GCTU Business School Empowers Students and Participants with Retirement Planning Seminar'),
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
