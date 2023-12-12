import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/screens/GetAssistance/getassistance.dart';
import 'package:studyssey/screens/courses/course_page.dart';
import 'package:studyssey/screens/gctu_news/NewsGCTU.dart';
import 'package:studyssey/screens/notification_page.dart';
import 'package:studyssey/screens/pay_fees/pay_fees.dart';
import 'package:studyssey/screens/sip/sip.dart';
import '../../components/drawer_screen.dart';
import 'home_tile.dart';
import 'sip_home_tile.dart';
import '../../constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String routeName = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CollectionReference student =
        FirebaseFirestore.instance.collection('student');
    String currentUser = FirebaseAuth.instance.currentUser!.uid;
    FlutterNativeSplash.remove();
    return FutureBuilder(
        future: student.doc(currentUser).get(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text(
              'Something went wrong',
              style: GoogleFonts.manrope(
                fontSize: 16.66,
                fontWeight: FontWeight.normal,
                color: color5,
              ),
            );
          } else if (snapshot.hasData && !snapshot.data!.exists) {
            return Text(
              'Document does not exist',
              style: GoogleFonts.manrope(
                fontSize: 16.66,
                fontWeight: FontWeight.normal,
                color: color5,
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            var studentData = snapshot.data!;
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
                foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
                title: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 16),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).primaryColor, BlendMode.srcIn),
                    child: SvgPicture.asset(
                      kLogo,
                      width: 113,
                      height: 31,
                    ),
                  ),
                ),
                centerTitle: true,
              ),
              drawer: DrawerScreen(
                  upperContent: upperContent, lowerContent: lowerContent),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: medium),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 14.17, bottom: 12),
                          child: Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: color13),
                                ),
                                Text(
                                  studentData['firstName'],
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(color: textColor1),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, NotificationPage.routeName);
                                },
                                child: Badge(
                                  padding: const EdgeInsets.only(
                                      top: 3.36, bottom: 2.88, right: 3.14),
                                  backgroundColor: color7,
                                  largeSize: 20,
                                  alignment: Alignment.topRight,
                                  label: SvgPicture.asset(
                                    kBellIcon,
                                    height: 23.05,
                                    width: 23.02,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: color8,
                                    backgroundImage:
                                        NetworkImage(studentData['profileImage']),
                                    radius: 30,
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                cursorColor: Theme.of(context).primaryColor,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: textColor1),
                                autocorrect: false,
                                enableSuggestions: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  prefixIcon: const Icon(Icons.search,
                                      size: 22, color: color3),
                                  contentPadding: const EdgeInsets.only(
                                      top: 12, bottom: 12, left: 7),
                                  hintText: 'Search Here',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: color3),
                                  fillColor: color6,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(height: small),
                        Padding(
                          padding: const EdgeInsets.only(top: small),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: small),
                                  child: HomeTile(
                                    title: 'Courses',
                                    imagePath: kHomeTileImage3,
                                    width: 131.11,
                                    height: 153.33,
                                    imageWidth: 119.57,
                                    imageHeight: 86.67,
                                    color: color9,
                                    textColor: textColor2,
                                    route: CoursePage.routeName,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: HomeTile(
                                  title: 'GCTU News',
                                  imagePath: kHomeTileImage4,
                                  width: 165.56,
                                  height: 153.33,
                                  imageWidth: 113.33,
                                  imageHeight: 97.02,
                                  color: color10,
                                  textColor: textColor6,
                                  route: NewsGCTU.routeName,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: small),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: HomeTile(
                                  imageWidth: 102.69,
                                  title: 'Pay Fees',
                                  imagePath: kHomeTileImage2,
                                  width: 172.22,
                                  height: 153.33,
                                  imageHeight: 93.66,
                                  color: color6,
                                  textColor: textColor6,
                                  route: PayFees.routeName,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: small),
                                child: HomeTile(
                                  title: 'Get\nAssistance',
                                  imagePath: kHomeTileImage1,
                                  width: 124.44,
                                  height: 153.33,
                                  imageWidth: 81.17,
                                  imageHeight: 98.8,
                                  color: color9,
                                  textColor: textColor2,
                                  route: GetAssistance.routeName,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: small),
                          child: SIPHomeTile(
                            title: 'SIP',
                            imagePath: kHomeTileImage5,
                            width: 308.89,
                            height: 124.44,
                            imageWidth: 221.25,
                            imageHeight: 111.53,
                            color: color10,
                            route: SIPortal.routeName,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return const CircularProgressIndicator();
        });
  }
}