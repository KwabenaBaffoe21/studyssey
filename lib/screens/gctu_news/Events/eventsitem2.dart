import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../newsitem.dart';

class EventItem2 extends StatelessWidget {
  const EventItem2({super.key});

  static String routeName = 'EventItem1';

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
            foregroundColor: MaterialStatePropertyAll(textColor2),
            shape: MaterialStatePropertyAll(
              BeveledRectangleBorder(),
            ),
          ),
          onPressed: () {},
          child: const Text('Apply Now!'),
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
                        image: 'assets/images/Cybersecurity-768x384.jpg',
                        issue: 'Issued by Operation Relations',
                        date: 'date',
                        paragraph:
                            '''The BSc. Computer Science (Cyber Security Option) is a 4-year programme that offers applicants the opportunity to graduate with a BSc. Computer Science with specialisation in Cyber Security. 
                            Applicants with academic diploma or HND or equivalencies in Computer Science or related fields from accredited tertiary institutions are eligible will be admitted for a top up.  The programme is offered at the Department of Computer Science under the Faculty of Computing and Information Systems (FoCIS).

                                
                                    Aims of the Programme
                                    The programme aims to churn out graduates with skills and knowledge in cyber security capable of developing and undertaking Cyber security activities in the country and beyond (including associated matters) by being able to react to security threats, conducting security threat assessment, and designing, securing and protecting critical infrastructure information systems to the high professional standards demanded by industry. Additionally, the programme prepares students for further studies as graduates of the programme can apply for master’s degree (or its equivalent) in the same or related areas.
                                
                                
                                    Objectives of the Programme
                                    The programme is designed to equip successful graduates to be able to:
                                    Apply the technical knowledge and skills needed to safeguard and defend computer systems;
                                    Design, implement, monitor and maintain cyber security mechanisms to help ensure the protection of data and information technology assets;
                                    Demonstrate understanding of the field of cyber security, Cyber Security challenges on a domestic and international level; and the relationships between laws, ethics, piracy, and computer security;
                                    Apply their knowledge and skills to succeed in their careers and/ or pursue an advanced degree in the area or related fields.
                                
                                
                                    Admission requirements
                                    As an option of the Computer Science Programme, candidates that apply for the programme must meet the minimum admission requirements of the BSc. Computer Science programme or the requirements stated below, in order to qualify to be admitted into the programme:
                                
                                
                                
                                    WASSCE Applicants
                                    At least credits (A1- C6) in the following three (3) core subjects: English Language, Mathematics, and Integrated Science. In addition, credits (A1 – C6) credits in Mathematics (Elective) and any other two (2) Elective Subjects.
                                
                                
                                
                                    SSSCE Applicants
                                    At least credits (A-D) core subjects: English Language, Mathematics, and Integrated Science. In addition, credits (A – D) credits in Mathematics (Elective) and any other two (2) Elective.
                                
                                
                                    GBCE/ABCE Applicants
                                    At least three (3) credits (A-D) in GBCE core subjects: English Language, Mathematics and Integrated Science. In addition, credits (A-D) in three (3) ABCE subjects such as Information Technology, Hardware and Networking and Information Systems or System Analysis and Design.
                                
                                
                                    Technical Schools Applicants
                                    Credits in three subjects: Mathematics, English language and Integrated Science plus credits in Elective Mathematics and credits in any two electives.
                                
                                
                                    ‘O’/A ‘Level Applicants
                                    FIVE (5) credits at O’ Level, including English, Additional Mathematics, Physics and Chemistry plus THREE (3) ‘A’ Level passes in Additional Mathematics, Physics, and Chemistry;
                                    They must also have a pass in General Paper.
                                
                                
                                    MATURE Applicants
                                    Applicants must be at least 25 years of age and at least three (3) years’ work experience in a related job
                                    Applicants must pass a written examination and an interview;
                                    In addition, mature applicants must possess any acceptable documentary evidence such as: birth certificates, voters’ ID card, National ID card which are at least five (5) years old after date of issue or at the time of seeking to enroll.
                                
                                
                                    HND or Equivalent Applicants:
                                    Applicants who hold HND certificate in Software Engineering, Computer Science or related fields with at least 2nd Class Lower Division from a recognised Tertiary Institution will be admitted to level 300.
                                    Applicants who hold HND certificate in Electrical/Electronic Engineering or Mechanical Engineering or related fields with at least 2nd Class Lower Division from a recognised Tertiary Institution will be admitted to level 200
                                
                                
                                    2-Year Tertiary Diploma Applicants:
                                    Applicants who hold a 2-year tertiary diploma in Computer Science, Software Engineering or related fields with at least FCGPA of 2.5(Credit) from an accredited Tertiary Institution will be admitted to level 300;
                                    Applicants who hold a 2-year tertiary diploma in Electrical and Electronic Engineering, Mechanical Engineering or related fields with at least FCGPA of 2.5(Credit) from an accredited Tertiary Institution will be admitted to level 200.
                                    
                                    Foreign Applicants:
                                    All foreign qualifications in relevant fields will be referred to the Ghana Tertiary Education Commission for determination of equivalences and eligibility for admission.
                                
                                
                                    International ICGCE
                                    All holders of ICGCE will be referred to the Ghana Tertiary Education Commission for determination of equivalences and eligibility for admission.
                                
                                
                                    Employment Opportunities
                                    Successful graduates will gain requisite skills for employment into public, private organisations and institutions including Security services eg. Military, Customs, National Security, Immigration, etc. Specific examples of career prospects include, but are not limited to:
                                
                                Information Security Analyst
                                Information Security Specialist
                                Cyber Security Manager
                                Digital Forensic Examiner
                                IT Auditor
                                Security Systems Administrator
                                Penetration Tester
                                Security Engineer
                                Security Architect
                                Cryptography Engineer''',
                        title:
                            'BSc. Computer Science (Cyber Security Option) – 4 Years'),
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
