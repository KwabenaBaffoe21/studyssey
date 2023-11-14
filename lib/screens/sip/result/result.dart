import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:studyssey/screens/sip/profile.dart';
import 'package:studyssey/screens/sip/register.dart';
import 'package:studyssey/screens/sip/result/component/customdatatabel.dart';
import 'package:studyssey/screens/sip/sip.dart';
import 'dart:ui' as ui;
import '../../../constant.dart';
import 'resultlist.dart';
import '../../homepage/homepage.dart';

class SResult extends StatefulWidget {
  const SResult({super.key});

  @override
  State<SResult> createState() => _SResultState();
}

class _SResultState extends State<SResult> {
  bool isFloating = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> destinationScreens = [
      const SIPortal(),
      const SRegister(),
      const HomePage(),
      const SResult(),
      const SProfile()
    ];
    DateTime currentDate = DateTime.now();
    String formattedDate =
        DateFormat('MMMM,\nyyyy', 'en_US').format(currentDate);

    // Add the day suffix
    String day = DateFormat('d').format(currentDate);
    String dayWithSuffix = day +
        (day.endsWith('1')
            ? 'st'
            : day.endsWith('2')
                ? 'nd'
                : day.endsWith('3')
                    ? 'rd'
                    : 'th');

    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          elevation: Theme.of(context).appBarTheme.elevation,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
          toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 16),
            child: Text('Results Slip'),
          ),
          titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
          centerTitle: Theme.of(context).appBarTheme.centerTitle,
          scrolledUnderElevation:
              Theme.of(context).appBarTheme.scrolledUnderElevation,
        ),
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                isFloating = true;
              });
            } else if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                isFloating = false;
              });
            }
            return true;
          },
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(vertical: 11.1, horizontal: 25.56),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 1150,
                    height: 0.07 * MediaQuery.of(context).size.height,
                    color: color11,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Result Slip(UNOFFICIAL DOCUMENT)',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontSize: 17.77),
                        softWrap: false,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: 1150,
                    height: 0.08 * MediaQuery.of(context).size.height,
                    color: color6,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      '$dayWithSuffix $formattedDate',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 14.44,
                          fontWeight: FontWeight.w500,
                          color: textColor1),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Container(
                    height: 0.06 * MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 74, right: 200),
                          child: Text(
                            'Name:\t\t\t\t Emmanuel Baffoe Appiah-Ofori'
                                .toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: textColor1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text(
                            'Index Number: \t\t\t\t040919887',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: textColor1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1010,
                    height: 0.08 * MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 45),
                    color: color6,
                    child: Row(
                      children: [
                        Text(
                          'Program of\n:Study',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: textColor1),
                          textDirection: ui.TextDirection.rtl,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'bit'.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: textColor1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 457),
                          child: Text(
                            'Level:',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: textColor1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            '400',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: textColor1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.06 * MediaQuery.of(context).size.height,
                  ),
                  Container(
                    width: 1150,
                    height: 0.08 * MediaQuery.sizeOf(context).height,
                    color: color6,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'First Year'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: textColor1, fontSize: 17.77),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 0.06 * MediaQuery.of(context).size.height,
                  ),
                  Container(
                    width: 1150,
                    height: 0.08 * MediaQuery.sizeOf(context).height,
                    color: color6,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'First\nSemester',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: textColor1),
                    ),
                  ),
                  buildDataTable(
                    context,
                    resultItem: resultContent1,
                  ),
                  SizedBox(
                    height: 0.06 * MediaQuery.of(context).size.height,
                  ),
                  Container(
                    height: 0.06 * MediaQuery.of(context).size.height,
                    width: 1150,
                    color: color6,
                  ),
                  SizedBox(
                    width: 1150,
                    height: 0.08 * MediaQuery.sizeOf(context).height,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Second\nSemester',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: textColor1),
                      ),
                    ),
                  ),
                  buildDataTable(
                    context,
                    resultItem: resultContent2,
                  ),
                  Container(
                    width: 1150,
                    height: 0.08 * MediaQuery.sizeOf(context).height,
                    color: color6,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'second year'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: textColor1, fontSize: 17.77),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 1150,
                    height: 0.08 * MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'First\nSemester',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: textColor1),
                      ),
                    ),
                  ),
                  buildDataTable(
                    context,
                    resultItem: resultContent3,
                  ),
                  SizedBox(
                    height: 0.06 * MediaQuery.of(context).size.height,
                  ),
                  Container(
                    width: 1150,
                    height: 0.08 * MediaQuery.sizeOf(context).height,
                    color: color6,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Second\nSemester',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: textColor1),
                    ),
                  ),
                  buildDataTable(
                    context,
                    resultItem: resultContent4,
                  ),
                  SizedBox(
                    height: 0.06 * MediaQuery.of(context).size.height,
                  ),
                  Container(
                    width: 1150,
                    height: 0.08 * MediaQuery.sizeOf(context).height,
                    color: color6,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'third year'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: textColor1, fontSize: 17.77),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 0.06 * MediaQuery.of(context).size.height,
                  ),
                  Container(
                    width: 1150,
                    height: 0.08 * MediaQuery.sizeOf(context).height,
                    color: color6,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'First\nSemester',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: textColor1),
                    ),
                  ),
                  buildDataTable(
                    context,
                    resultItem: resultContent5,
                  ),
                  SizedBox(
                    height: 0.06 * MediaQuery.of(context).size.height,
                  ),
                  Container(
                    width: 1150,
                    height: 0.08 * MediaQuery.sizeOf(context).height,
                    color: color6,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Second\nSemester',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: textColor1),
                    ),
                  ),
                  buildDataTable(context, resultItem: resultContent6),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: Theme.of(context).bottomNavigationBarTheme.elevation,
          landscapeLayout:
              Theme.of(context).bottomNavigationBarTheme.landscapeLayout,
          showUnselectedLabels:
              Theme.of(context).bottomNavigationBarTheme.showUnselectedLabels,
          showSelectedLabels:
              Theme.of(context).bottomNavigationBarTheme.showSelectedLabels,
          unselectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          selectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          iconSize: 31.89,
          currentIndex: currentIndex,
          selectedLabelStyle:
              Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
          unselectedLabelStyle:
              Theme.of(context).bottomNavigationBarTheme.unselectedLabelStyle,
          type: Theme.of(context).bottomNavigationBarTheme.type,
          useLegacyColorScheme: false,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => destinationScreens[index]),
                (route) => true);
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kDashBoard), label: 'DashBoard'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kRegister), label: 'Register'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kHomeIcon), label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kResult), label: 'Result'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kProfileIcon), label: 'Profile'),
          ],
        ),
        floatingActionButton: isFloating
            ? FloatingActionButton(
                onPressed: () {},
                elevation:
                    Theme.of(context).floatingActionButtonTheme.elevation,
                backgroundColor:
                    Theme.of(context).floatingActionButtonTheme.backgroundColor,
                foregroundColor:
                    Theme.of(context).floatingActionButtonTheme.foregroundColor,
                shape: Theme.of(context).floatingActionButtonTheme.shape,
                child: Text(
                  'Print',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              )
            : null);
  }
}
