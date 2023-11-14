import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../NewsGCTU.dart';
import '../newsitem.dart';



class NFItem1 extends StatelessWidget {
  const NFItem1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:20, right: medium, left: medium),
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
                            ],),

                          ],
                        ),
                        const SizedBox(width: 200),

                        Column(
                          children: [
                            SvgPicture.asset('assets/svg/save.svg',
                              width: 15.44,
                              height: 16.75,
                            ),
                          ],
                        ),

                           ],
                         ),
                        const SizedBox( height: 15,),

                        const newsitemcomp(image: 'assets/images/Rectangle 40.jpg',
                            issue: 'Issued by University Relations Directorate',
                            date: 'Thursday January 26, 2023',
                            paragraph: '''The cladding of the Administration block has been handed over to GCTU on an interim basis by the contractor, Wax Homes Ghana Ltd.

                            The handing over took place in a brief ceremony on Wednesday 25th January, in front of the administration block.
                            Welcoming the Management and staff of GCTU and the contractor to the ceremony, the Director of Works and Physical Development, Surv. Gordon Baapiri, commended the contractor for a good job done and praised the VC for his vision and leadership in commissioning the project. He made reference to the seven-year Strategic Plan saying it enjoins the univers ity to undertake measures to enhance the physical appearance and functional performance of the physical structures of the university.

                            “It was in line with this goal that we undertook this project to enhance and also rebrand the university”, the Director said.
                            The project involved the removal of the mosaic tiles on the walls of the administration block and remodeling them with alucobond cladding in the university’s colours. The project which was handed over to the contractor on 14th June after winning the bid through competitive tender, was completed within the stipulated six-month period.
                            “Last week the contractor wrote to us to inform us that he had finished the work and so we are here today to take over the completed project”, Mr. Baapiri said. He added that the defect liability period of six months will start today 25th June.
                            Visibly excited, Prof. Emmanuel Ohene Afoakwa thanked the internal team as well as the contractor for a wonderful work done. He thanked Management as well for believing in his vision and supporting the project to its successful completion.
                            The VC did not hesitate to remark about the imposing structure which appears to be the centre of attraction on campus.
                            “The building is so beautiful, everyone can attest to that. It has changed the aesthetics of the campus greatly.
                            “After going round and inspecting it, we are all very happy about it. We can see that it is a job well done”, prof. added.
                            The VC at the beginning of last year (2022), rolled out his agenda to model the university into a world-class university with modern structures, facilities and equipment dubbed the Silicon Valley agenda. Central to his plan is the aggressive improvement and expansion of the infrastructure of the university.
                            Since then, several structures on campus have already seen a facelift with new ones set to spring up this year. The construction of the main gate which is a big part of the plan is also in an advanced stage of completion.
                            In his closing remarks, the VC said, “we pray that the materials used are of the highest quality and durable enough to keep the colours looking bright for a long time”. He added, “we will be checking to see if there are any defects during the six-month defect liability period”.
                            The VC, Prof. Emmanuel Ohene Afoakwa, handed the takeover certificate to the contractor to symbolize his satisfaction with the project and performed the symbolic cutting of the tape to officially accept the project.
                            Mr. Isaac Bonsu, Assistant Director of Wax Home Ghana Ltd, thanked Management for the opportunity to once again work with GCTU and hoped for more of such opportunities in the future. '''
                          , title: 'Interim Handing Over Of Cladded Administration Block'),

                        const SizedBox( height: 30,),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
