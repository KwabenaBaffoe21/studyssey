import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constant.dart';
import '../newsitem.dart';

final Uri _url = Uri.parse('https://apply.gctu.edu.gh/#/');

class EventItem5 extends StatelessWidget {
  const EventItem5({super.key});

  static String routeName = 'EventItem4';

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
                        image: 'assets/images/Data-analytics.jpg',
                        issue: 'Issued by Operation Relations',
                        date: '11th July, 2023',
                        paragraph:
                            '''The BSc. Data Science and Analytics is a 4-year programme that offers applicants the opportunity to graduate with a BSc. Computer and Analytics upon successful completion. Applicants with diploma or HND or equivalencies in Computer Science or related fields from accredited tertiary institutions are eligible for admission for a top up.  The programme is offered at the Department of Computer Science under the Faculty of Computing and Information Systems (FoCIS). 
                                    
                                     
                                    
                                    Aims of the Programme
                                    The programme aims to produce Data Science professionals who would use tools and techniques that are based on Data Science and Analytics knowledge on data to find trends and solve problems as well as construct the means for extracting business-focused insights from data.
                                    
                                     
                                    
                                    Objectives of the Programme
                                    The programme is designed to equip successful graduates with the knowledge and tools to be able to:
                                    
                                    Demonstrate extensive first-hand experience of carrying out typical workflows of data analytics;
                                    Develop the skills in making formal and informal inferences based on statistical data;
                                    Demonstrate an understanding of basic properties of data, data acquiring, data querying, and analysis, and how to extract insights from data and how to report the results;
                                    Demonstrate the ability to use and understand classical and modern data-analytics techniques, statistical machine learning and artificial intelligence techniques;
                                    Have a broad range of knowledge useful in data-analytic contexts, including topics at an intermediate or advanced level in economics and accounting;
                                    Apply relevant mathematical arguments in a logical manner.
                                    Evaluate the appropriateness of statistical analyses, results, and inferences to understand research and interpret data in applied settings;
                                    Apply knowledge of ethical issues in Data Science covering privacy, security, moral and ethics as data scientists;
                                    Acquire knowledge of advanced topics in mathematics and statistics for further studies and research in data science;
                                    Apply needed analytical and research skills as a result of the courses that they will undertake, presentation of term papers that they would make in various courses (individually or in groups) and also the compulsory research /final year project requirement in partial fulfillment of the programme;
                                    Apply data analytics ethics that govern data science and analytics, their associated programs and tools. This encompasses but not limited to business intelligence analyst, data analyses, data engineering, software, privacy concerns, intellectual property rights and effects on society are some of the common issues of data analytics ethics.
                                     
                                    
                                     Admission Requirements
                                    
                                     
                                    
                                    WASSCE Applicants:
                                    
                                    Holders of WASSCE must have at least credits (A1-C6) in three (3) core subjects (English Language, Mathematics and Integrated Science) plus at least credits (A1-C6) in elective Mathematics in addition any other two (2) electives.
                                    
                                     
                                    
                                    SSSCE Applicants:
                                    
                                    Holders of WASSCE must have at least credits (A-D) in three (3) core subjects (English Language, Mathematics and Integrated Science) plus at least credits (A-D) in elective Mathematics in addition any other two (2) electives.
                                    
                                    GBCE/ABCE Applicants:
                                    
                                    Holders must have at least three (3) credits (A-D) in GBCE core subjects: English Language, Business Mathematics and Integrated Science in addition to at least credits (A-D) in three (3) ABCE subjects such as Information Technology, Hardware and Networking and Information Systems or System Analysis and Design.
                                    
                                     
                                    
                                    ‘O’/A ‘Level Applicants:
                                    
                                    Holders must have five (5)credits at ‘O’ Level including English, Additional Mathematics, Physics and Chemistry plus THREE (3) ‘A’ Level passes in Additional Mathematics, Physics, and Chemistry;
                                    They must also have a pass in General Paper.
                                     
                                    
                                    MATURE Applicants:
                                    
                                    Applicants must be at least 25 years of age and should have at least three (3) years’ work experience in an I.T related job. Such applicants must have at least credit in Elective Mathematics.
                                    Applicants must pass a written examination
                                    In addition, mature applicants must possess any acceptable documentary evidence such as Birth Certificates, Driving License, Voters’ ID card or National ID card which are at least five (5) years old after date of issue or by the date of seeking to enroll or date of gaining admission.
                                     
                                    
                                    HND Applicants:
                                    
                                    Applicants must hold HND or equivalent in Computer Science, Electrical and Electronic Engineering or Mechanical Engineering with at least 2nd Class Lower Division from accredited Tertiary Institution
                                    Applicants with HND in Computer Science shall be admitted into level 300 whilst applicants with HND in Mechanical Engineering or HND in Electrical/Electronic Engineering or related fields shall be admitted into level 200.
                                     
                                    
                                    2-year Tertiary Diploma Applicants
                                    
                                    Applicants who hold a 2-year tertiary diploma in Computer Science, Software Engineering, Cyber Security or related fields with at least 2nd Class Lower Division from accredited Tertiary Institution will be admitted to level 300.
                                    Applicants who hold a 2-year tertiary diploma in Electrical and Electronic Engineering or Mechanical Engineering or related fields with at least 2nd Class Lower Division from accredited Tertiary Institution shall be admitted into level 200.
                                    Foreign Applicants:
                                    
                                    All foreign qualifications in Computer Science, Electrical and Electronic Engineering or relevant fields will be referred to the Ghana Tertiary Education Commission (GTEC) for determination of equivalences and eligibility for admission.
                                    
                                     
                                    
                                    Employment Opportunities
                                    Successful graduates will gain requisite skills for employment into public, private organisations and institutions as:
                                    
                                    Computer programmers
                                    Computer Analysts
                                    System Analysts
                                    Business Intelligence Analyst
                                    Machine Learning engineer
                                    Data Analyst
                                    Data Architect and
                                    Data Engineer.
                                    ''',
                        title: 'BSc. Data Science & Analytics (4 Years)'),
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
