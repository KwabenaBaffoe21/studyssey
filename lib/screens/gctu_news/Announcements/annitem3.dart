import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../NewsGCTU.dart';
import '../eventsitem.dart';

class anItem3 extends StatelessWidget {
  const anItem3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: SizedBox(
        width: 500,
        height: 61,
        child: OutlinedButton(
          style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(0),
              backgroundColor: MaterialStatePropertyAll(color13),
              foregroundColor: MaterialStatePropertyAll(color12),
              shape: MaterialStatePropertyAll(
                BeveledRectangleBorder(),
              )),
          onPressed: () {},
          child: const Text('I will be attending!'),
        ),
      ),
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
                const SizedBox(
                  width: 115,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Event',
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
                                  'Events',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: textColor1),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 220),
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
                    const EventSiteComp(
                      image: 'assets/images/cybersecurity-summerschool.jpg',
                      issue: 'University Relations Directorate',
                      date: 'Thursday, 20th April 2023',
                      paragraph: '''Call for Papers: THREAT 2023 - "CyberFuture:
                          Confronting Emerging Cybersecurity Threats"
                          
                          THREAT 2023, a premier cybersecurity conference, invites submissions for its upcoming gathering. This year's theme," CyberFuture", prompts us to delve into the challenges and opportunities in cybersecurity as we navigate an increasingly digital world.
                          We seek engaging and insightful presentations focusing on emerging technologies such as Artificial Intelligence, Quantum Computing, and the Bio-Cyber nexus. Special attention will be given to contributions that explore the evolving 'metaverse' and the considerations it entails. In light of the growing digital divide, we also encourage submissions that address policy issues and strategies for cybersecurity in developing nations. Equally, we cannot ignore the rising menace of cyberwarfare, and seek thought provoking submission on this topic.
                          
                          As a collaborative platform for Government, Academia, and the Business sector, THREAT 2023 aims to foster a triple helix of expertise and perspectives. The conference will feature plenary sessions and round table discussions, providing ample opportunities to exchange ideas and collaborate on solutions.
                          Key topics of interest include but are not limited to:
                          Impact and implications of Al on cybersecurity
                          Quantum computing and cybersecurity
                          Cybersecurity at the Bio-Cyber nexus
                          Securing the metaverse
                          Policy cybersecurity in developing nations
                          
                          Submission Guidelines:
                          We welcome original, unpublished research papers not under consideration for publication elsewhere. Papers should be written in English and formatted according to the conference guidelines. Position papers and reviews are also unique security issues and strategies for welcome and should be clearly identified as such. All submissions will be peer reviewed and successful submission will be included in the conference proceedings
                          
                          Important Dates:
                          1. Abstract Submission Deadline: August 20, 2023
                          2. Paper Submission Deadline: September 15, 2023
                          3. Notification of Acceptance: October 15, 2023
                          4. Final Paper Submission: October 30, 2023
                          5. Conference Dates: November 20 and 21, 2023
                          
                          Join us as we shape the future of cybersecurity at THREAT 2023. For more information about the submission process, please visit our website at www.threatcon.co.za.
                          
                          We eagerly anticipate your contributions and the rich discussions they will inspire. Selected authors will be requested to make a 10-minute presentation on their submission and join the round-table discussion thereafter.
                          
                          Each plenary session will consist of:
                          Keynote government/policy paper: 20 min.
                          Keynote sponsor presentation: 20 min.
                          Academic presentations: 20 - 30 min.
                          Round Table Discussion: 60 minutes
                          
                          All accepted papers will be included in the THREAT 2023 Conference Proceedings:
                          Title: THREAT2023 Proceedings
                          ISBN:978-0-6397-8434-2(e-book)
                          
                          To register
                          oia@gctu.edu.gh
                          
                          To submit a paper:
                          Call: 0242857662 / 020 8484003''',
                      title:
                          'Cyber Security Conference and Summer School in South Africa (THREAT CYBER FUTURE 2023)',
                      venue: 'Stellenbosch, South Africa',
                      time: 'TBC',
                      eventDate: '20th November 2023',
                    ),
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
