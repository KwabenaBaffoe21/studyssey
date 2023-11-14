import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../NewsGCTU.dart';
import '../eventsitem.dart';

class anItem1 extends StatelessWidget {
  const anItem1({super.key});

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
                      image: 'assets/images/Manifesto-web-768x384.jpg',
                      issue: 'University Relations Directorate',
                      date: '4th October 2023',
                      paragraph:
                          '''We are excited to inform you about the upcoming GCTU Alumni Association’s Elections. As part of the activities towards the elections, there will be reading of manifestos by the candidates vying for positions on the Executive Committee of the Alumni Association.
                          The University Community is invited to witness this important event that will shape the future of the Alumni Association.
                          
                          Whether you are an alumnus, a current student, a faculty member, or a staff member, your presence is warmly welcomed. This event is a chance to witness the dedication and passion of our alumni who are committed to serving our institution and maintaining a strong bond with our beloved GCTU.
                          
                          For those who cannot be there in-person due to work schedules, a zoom link is provided below for you to join in virtually.
                          
                          Zoom link: https://wacren.zoom.us/j/61470399670
                          
                          Meeting ID: 614 7039 9670''',
                      title:
                          '#AlumniElections: GCTU Alumni Association Elections – Reading Of Manifestos',
                      venue: 'Florence Onny Auditorium',
                      time: '11:00am',
                      eventDate: 'Thursday, 5th October 2023',
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
