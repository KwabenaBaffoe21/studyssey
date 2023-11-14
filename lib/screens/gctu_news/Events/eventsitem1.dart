import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constant.dart';
import '../newsitem.dart';

final Uri _url = Uri.parse('https://apply.gctu.edu.gh/#/');

class EventItem1 extends StatelessWidget {
  const EventItem1({super.key});

  static String routeName = 'EventItem';

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
            foregroundColor: MaterialStatePropertyAll(textColor2),
            shape: MaterialStatePropertyAll(
              BeveledRectangleBorder(),
            ),
          ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                          image: 'assets/images/Dip.W.A.jpg',
                          issue: 'Issued by Operation Relations',
                          date: '11th July, 2023',
                          paragraph:
                              '''Web design and development facilitates modern computing, as most of the technologies we use today are increasingly connected to the web, leading to a high demand for technically competent professionals who can develop innovative ideas and create solutions for the future. This Diploma in Web Application Development programme is developed to rapidly provide professionals with the specialised knowledge that is important in the development of web and mobile computer applications. The programme is structured to fine-tune the strategic problem-solving skills of students, highly sought after by employers for a career in the expanding web, computer science and software development industries. Successful graduates will gain requisite skills for employment into public, private organisations and institutions as web application developers, website designers, website administrators and Computer programmers.
                            
                             
                            
                            The Diploma in Web Application Development is a 2-year programme offered at the Department of Mobile and Pervasive Computing under the Faculty of Computing and Information Systems (FoCIS). Upon successful completion of the programme, graduates shall be awarded Diploma in Web Application Development.
                            
                             
                            
                            Aims of the Programme
                            To train competent information technology professionals, equipped with the skills to analyse, design, develop and maintain secure web applications, services and mobile applications that exploit the capabilities of the internet.
                            
                             
                            
                            Objectives
                            The programme is designed to equip successful students to be able to:
                            
                            Critically apply creative thinking to solve real-world problems and utilise human-centered design principles to develop products that are fit for purpose.
                            Apply scientific principles to choose the appropriate tools and to establish and manage secure web servers and create and maintain appropriate web material.
                            Apply industry-standard codes of practice and conduct, including privacy and security protocols in their professional practices.
                            Effectively analyze clients’ requirements, manage their expectations and ultimately deliver an excellent custom solution.
                            Effectively use the latest tools, techniques and scripting languages to design and develop dynamic, interactive and secure web and responsive mobile solutions.
                            Demonstrate understanding and apply ethical, legal and moral principles in the development and use of computing system.
                            Have a strong foundation in algorithmic thinking and web technologies required for advanced studies and research in web and the internet technologies
                             
                            
                            Admission Requirements
                             
                            
                            WASSCE Applicants:
                            
                            Credit passes (A1-C6) in five(5) subjects comprising three(3) core subjects, English Language, Integrated Science, Mathematics, plus two relevant elective subjects. Social Studies cannot be used as a replacement for Integrated Science.
                            
                             
                            
                            SSSCE Applicants:
                            
                            Credit passes (A-D) in five(5) subjects comprising three(3) core subjects, English Language, Integrated Science, Mathematics, plus two relevant elective subjects. Social Studies cannot be used as a replacement for Integrated Science.
                            
                             
                            
                            GBCE/ABCE Applicants:
                            
                            Holders must have at least three (3) credits (A-D) in GBCE core subjects: English Language, Business Mathematics and Integrated Science in addition to at least credits (A-D) in two (2) ABCE subjects such as Information Technology, Hardware and Networking and Information Systems or System Analysis and Design.
                            
                             
                            
                            ‘O’/A ‘Level Applicants:
                            
                            Holders must have five (5) credits at ‘O’ Level including English, Mathematics, plus THREE (3) ‘A’ Level passes in any subject;
                            They must also have a pass in General Paper.
                             
                            
                            MATURE Applicants:
                            
                            Applicants must be at least 25 years of age at the time of submitting the application and should have SSSC/WASSCE or GCE ‘O’ Level Certificate in five (5) subjects including English Language, Mathematics and a Science subject plus at least three (3) years work experience in an I.T related job.
                            Applicants must pass a written examination;
                            In addition, mature applicants must possess any acceptable documentary evidence such as Birth Certificates, Driving License, Voters’ ID card or National ID card which are at least five (5) years old after date of issue or by the date of seeking to enroll or date of gaining admission.
                             
                            
                            Foreign Applicants:
                            
                            All foreign qualifications will be referred to the National Accreditation Board (NAB) for determination of equivalences and eligibility for admission.
                            
                             
                            
                            Employment Opportunities:
                            Successful graduates will gain requisite skills for employment into public, private organisations and institutions or equipped for self-employment as:
                            
                            Web Application Developers
                            Website designers
                            Website administrators
                            Software Developers
                            Computer programmers
                            ''',
                          title: 'Diploma In Web Application Development'),
                      const SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
