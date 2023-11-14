import 'package:flutter/material.dart';
import 'package:studyssey/screens/courses/seemore.dart';
import 'package:studyssey/screens/gctu_news/NewsGCTU.dart';
import 'package:studyssey/screens/pay_fees/pay_fees.dart';
import 'package:studyssey/screens/resetpage/changepassword.dart';
import 'package:studyssey/screens/courses/coursepage.dart';
import 'package:studyssey/screens/homepage/homepage.dart';
import 'package:studyssey/screens/loginpage.dart';
import 'package:studyssey/screens/notificationpage.dart';
import 'package:studyssey/screens/onboarding/onboardingpage.dart';
import 'package:studyssey/screens/resetpage/resetpage.dart';
import 'package:studyssey/screens/sip/sip.dart';

Map<String, WidgetBuilder> routes = {
  OnboardingPage.routeName: (context) => const OnboardingPage(),
  LoginPage.routeName: (context) => const LoginPage(),
  HomePage.routeName: (context) => const HomePage(),
  ResetPage.routeName: (context) => const ResetPage(),
  ChangePassword.routeName: (context) => const ChangePassword(),
  NotificationPage.routeName: (context) => const NotificationPage(),
  CoursePage.routeName: (context) => const CoursePage(),
  SeeMore.routeName: (context) => const SeeMore(),
  SIPortal.routeName: (context) => const SIPortal(),
  NewsGCTU.routeName: (context) => const NewsGCTU(),
  PayFees.routeName: (context) => const PayFees()
};
