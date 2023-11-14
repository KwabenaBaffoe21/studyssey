import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';
import '../NewsGCTU.dart';
import '../textcomp.dart';

void main() {
  runApp(const privacypolicy());
}

class privacypolicy extends StatelessWidget {
  const privacypolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // Set text directionality here
      child: Scaffold(
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
                          'Terms of Use',
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
                const Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        TextComp(
                            text:
                                'Welcome to Studyssey! Please read these Terms of Use ("Terms") carefully before using the Studyssey mobile application ("the App") provided by Ghana Communication Technology University ("GCTU"). By downloading, installing, or using the App, you agree to comply with and be bound by these Terms. If you do not agree with these Terms, please do not use the App.',
                            heading: ''),
                        TextComp(
                            text:
                                'By using the App, you acknowledge that you have read, understood, and agree to be bound by these Terms. These Terms may be updated or modified from time to time, and it is your responsibility to review them periodically.',
                            heading: '1. Acceptance of Terms'),
                        TextComp(
                            text:
                                'You agree to use the App in compliance with all applicable laws and regulations. You are responsible for maintaining the confidentiality of your account information and are prohibited from sharing your account credentials with others.',
                            heading: '2. User Conduct'),
                        TextComp(
                            text:
                                'Your use of the App is also governed by our Privacy Policy, which outlines how we collect, use, and protect your personal information. By using the App, you consent to our data practices as described in the Privacy Policy.',
                            heading: '3. Privacy'),
                        TextComp(
                            text:
                                'All content and materials available on the App, including but not limited to text, graphics, logos, images, and software, are the property of GCTU or its licensors and are protected by copyright, trademark, and other intellectual property laws.',
                            heading: '4. Intellectual Property'),
                        TextComp(
                            text:
                                'GCTU reserves the right to terminate or suspend your access to the App at any time for any reason without notice. Upon termination, your right to use the App will immediately cease.',
                            heading: '5. Termination'),
                        TextComp(
                            text:
                                'The App is provided "as is" and "as available" without any warranties, express or implied. GCTU does not warrant that the App will be error-free, uninterrupted, or free of viruses or other harmful components.',
                            heading: '6. Disclaimer of Warranties'),
                        TextComp(
                            text:
                                'GCTU shall not be liable for any direct, indirect, incidental, special, or consequential damages arising out of or in connection with the use of the App.',
                            heading: '7. Limitation of Liability'),
                        TextComp(
                            text:
                                'These Terms are governed by the laws of Ghana. Any disputes arising from these Terms will be subject to the exclusive jurisdiction of the courts in Ghana.',
                            heading: '8. Governing Law'),
                        TextComp(
                            text:
                                'If you have any questions or concerns about these Terms of Use, please contact us at [contact@email.com].',
                            heading: '9. Contact Information'),
                        TextComp(
                            text: 'Thank you for using Studyssey!',
                            heading: ''),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
