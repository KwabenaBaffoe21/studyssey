import 'package:flutter/material.dart';
import 'package:studyssey/screens/onboarding/buildpage.dart';
import 'package:studyssey/components/custombutton.dart';
import 'package:studyssey/screens/loginpage.dart';
import 'package:studyssey/components/custompageindicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  static String routeName = 'OnboardingPage';

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController controller = PageController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: PageView(
              controller: controller,
              children: const [
                BuildPage(
                  title: 'Student-life at GCTU has never been so convenient',
                  imagePath: 'images/onboarding/onboardingImage1.svg',
                  width: 358,
                  height: 318,
                  vertical: 18,
                ),
                BuildPage(
                  title: 'Access you study material and SIP all in one place',
                  imagePath: 'images/onboarding/onboardingImage2.svg',
                  width: 324,
                  height: 324,
                  vertical: 18,
                ),
                BuildPage(
                  title: 'Pay fees and other bills with simple few clicks!',
                  imagePath: 'images/onboarding/onboardingImage3.svg',
                  width: 304,
                  height: 290,
                  vertical: 18,
                ),
                BuildPage(
                  title: 'Keep up with the times and receive rapid assistance',
                  imagePath: 'images/onboarding/onboardingImage4.svg',
                  width: 357,
                  height: 277,
                  vertical: 37,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        height: 153, //153,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomPageIndicator(controller: controller),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(route: LoginPage.routeName, text: 'Skip',   width:307.78, height:44.44),
            )
          ],
        ),
      ),
    );
  }
}
