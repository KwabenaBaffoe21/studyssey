import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constant.dart';
import '../newsitem.dart';

final Uri _url = Uri.parse('https://apply.gctu.edu.gh/#/');

class EventItem4 extends StatelessWidget {
  const EventItem4({super.key});
  static String routeName = 'EventItem3';
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
              )),
          onPressed: _launchUrl,
          child: Text('Apply Now!'),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20, right: medium, left: medium),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      kBackButtonIcon,
                      width: 31.68,
                      height: 31.7,
                      theme: const SvgTheme(currentColor: color9),
                    ),
                  ),
                ),
                Text(
                  'General Notice',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: textColor1),
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
                                  'General Notice',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: textColor1),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 180),
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
                        image: 'assets/images/Dip.computer-science.jpg',
                        issue: 'Issued by Operation Relations',
                        date: '11th July, 2023',
                        paragraph:
                            '''The Diploma in Computer Science is a 2-year programme offered at the Department of Computer Science under the Faculty of Computing and Information Systems (FoCIS). Upon successful completion of the programme, graduates shall be awarded Diploma in Computer Science.
                              
                               Aims of the Programme
                              The programme aims to produce computer science professional who are innovative, ethical, entrepreneurial graduates that use tools and techniques that are based on computer science knowledge to develop relevant applications and systems that impart society.
                              
                               
                              
                              Objectives of the Programme
                              The programme is designed to equip successful graduates to be able to:
                              
                              Identify problems, analyse requirements, formulate designs and implements solutions to automate manual processes using computer science knowledge, techniques, and tools;
                              Apply relevant mathematical and engineering methods to solving computing problems;
                              Demonstrate the ability to use computer programming skills for problem solving;
                              Apply software engineering methods and tools for developing quality software solutions;
                              Develop appropriate tools to help with the management and coordination of activities in enterprises;
                              Demonstrate an understanding to moral, legal and ethical use of computer systems;
                              Demonstrate strong foundation in algorithmic thinking and the use of computer systems required for further studies in computer science.
                               
                              
                              Admission requirements
                               
                              
                              SSSCE Applicants
                              
                              Credit passes (A-D) in three (3) core subjects, English Language, Mathematics and Integrated Science in addition to credit passes(A-D) in any three(3) elective subjects including Elective Mathematics.
                              
                               
                              
                              WASSCE Applicants
                              
                              Passes (A1-D7) in three (3) core subjects, English Language, Mathematics and Integrated Science in addition to passes (A1-D7) in any three (3) elective subjects including Elective Mathematics. Note that at least three (3) of the core or elective subject should be credit passes (A1-C6).
                              
                               
                              
                              GBCE/ABCE Applicants:
                              
                              Holders must have at least three (3) credits (A-D) in GBCE core subjects: English Language, Business Mathematics and Integrated Science in addition to at least credits (A-D) in two (2) ABCE subjects such as Information Technology, Hardware and Networking and Information Systems or System Analysis and Design.
                              
                               
                              
                              ‘O’/A ‘Level Applicants:
                              
                              Holders must have five (5) credits at ‘O’ Level including English, Additional Mathematics, Physics and Chemistry plus THREE (3) ‘A’ Level passes in Additional Mathematics, Physics, and Chemistry;
                              They must also have a pass in General Paper.
                               
                              
                              MATURE Applicants:
                              
                              Applicants must be at least 25 years of age and at least three (3) years’ work experience in a related job
                              Applicants must pass a written examination
                              In addition, mature applicants must possess any acceptable documentary evidence such as Birth Certificates, Driving License, Voters’ ID card or National ID card which are at least five (5) years old after date of issue or by the date of seeking to enroll or date of gaining admission.
                               
                              
                              HND Applicants:
                              
                              Applicants must hold HND in Electrical and Electronic Engineering, Mechanical Engineering or related fields with at least 2nd Class Lower Division from accredited Tertiary Institution.
                              
                               
                              
                              2-year Tertiary Diploma Applicants:
                              
                              Applicants with 2-year tertiary diploma or equivalent in Electrical and Electronic Engineering or Mechanical Engineering with at least an FCGPA of 1.50-1.99(Pass) or 1.00-2.49(Pass) from accredited Tertiary Institution.
                              
                                                                 
                              
                              Foreign Applicants:
                              
                              All foreign qualifications in Computer Science, Electrical and Electronic Engineering or relevant fields will be referred to the Ghana Tertiary Education Commission (GTEC) for determination of equivalences and eligibility for admission.
                              
                               
                              
                              Employment Opportunities
                              Successful graduates will gain requisite skills for employment into public and private institutions including banks as:
                              
                              Computer Programmers
                              Computer Analysts
                              System Analysts
                              Management Information Specialists
                              Software Developer
                              Data Analyst
                              Web Designer
                              Application Developer''',
                        title: 'Diploma In Computer Science'),
                    const SizedBox(
                      height: 70,
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
