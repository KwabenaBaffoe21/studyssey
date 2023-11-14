import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constant.dart';
import '../NewsGCTU.dart';
import '../eventsitem.dart';

final Uri _url = Uri.parse('https://apply.gctu.edu.gh/#/');

class anItem2 extends StatelessWidget {
  const anItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const SizedBox(
        width: 500,
        height: 61,
        child: OutlinedButton(
          style: ButtonStyle(
            elevation: MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(color13),
            foregroundColor: MaterialStatePropertyAll(color12),
            shape: MaterialStatePropertyAll(
              BeveledRectangleBorder(),
            ),
          ),
          onPressed: _launchUrl,
          child: Text('I will be attending!'),
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
                      image: 'assets/images/Seminar.jpg',
                      issue: 'University Relations Directorate',
                      date: 'Thursday, 20th April 2023',
                      paragraph: '''Course Information
                            – The Graphic Design Production course provides an opportunity for trainees to combine several draw and paint applications into design. Students will explore advanced techniques in designing computer art using best industry software (Adobe PhotoShop, Illustrator and InDesign).
                            
                            Also, students will apply knowledge of paper stock and other media for reproduction of designs, use scanning and image resolution enhancements in producing graphics, convert files into various formats using available technology, use a variety of computer software in the production phase and apply skills in the areas of image conversion, cropping, resizing, and clean-up.
                            
                            – Course Learning Outlines
                            By the end of this course, the student should be able to
                            
                            Apply a basic knowledge of the design process to create design solutions
                            Execute designs according to instructions of supervisors, and clients using standard industry procedures and technology
                            Produce comprehensives using an appropriate degree of detail and quality within time and budget constraints
                            Work in a team to achieve set goals
                            Effectively utilize the elements of visual language including composition, visual priorities, image, type, colour, texture, etc.
                            Use and manipulate existing images within accepted ethical and legal guidelines under appropriate supervision and direction
                            Critic their own works of design and those of others
                            Course Contents
                            Introduction to Graphic Design
                            Introduction to Digital Media
                            Digital Capturing and Streaming
                            Web layout and design
                            Effective application of Design Elements and Principles
                            Production Systems in the Design Industry
                            Target Audience
                            This is a professionally designed training for individuals working in the Advertising Firms, Corporate Branding and Consultancy, Television Studios and Video Production Companies, Internet and Software Development Companies, Junior/Senior school leavers, Computer Enthusiasts and individuals who need to acquire knowledge in the use of basic peripherals, social networks and personal computers.
                            
                            Contact: 0202625781''',
                      title:
                          '3-Month Certificate Training in Graphic Design Production',
                      venue: 'GCTU main Campus, Tesano',
                      time: '9-2 pm',
                      eventDate: '7th October 2023',
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

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
