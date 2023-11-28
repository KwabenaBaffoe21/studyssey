
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/print_registration_page.dart';
import 'package:studyssey/screens/sip/profile.dart';
import 'package:studyssey/screens/sip/result/result.dart';
import 'package:studyssey/screens/sip/sip.dart';
import '../homepage/home_page.dart';

class SRegister extends StatefulWidget {
  const SRegister({super.key});

  @override
  State<SRegister> createState() => _SRegisterState();
}

class _SRegisterState extends State<SRegister> {
  bool isVisible = false;
  List<bool> isChecked = [false, false, false, false, false];
  List<String> lectureName = [
    'Mr. Edward Kwadwo Boahen',
    'Dr. Patrick Acheampong',
    'Mr. Dominic Louis',
    'Dr. Emmanuel Fianu',
    'Dr. Israel Edem Agbehadji'
  ];
  List<String> courseName = [
    'IT 452 - Computer Science',
    'IT 462 - Electronic Commerce',
    'IT 464 - Management Information System',
    'IT 498 - Project Work',
    'IT 412 - System Administration'
  ];
  List<int> creditHours = [3, 3, 3, 5, 3];
  int currentIndex = 0;

  int calculateTotalCredit() {
    int totalCredit = 0;
    for (int credit = 0; credit < isChecked.length; credit++) {
      if (isChecked[credit]) {
        totalCredit += creditHours[credit];
      }
    }
    return totalCredit;
  }

  int availableCredit() {
    int totalCreditAvailable = 0;
    for (int credit in creditHours) {
      totalCreditAvailable += credit;
    }
    return totalCreditAvailable;
  }

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
        DateFormat('MMMM, yyyy', 'en_US').format(currentDate);

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
          elevation: 0,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
            color: const Color(0xff000000),
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 16),
            child: Text('Course Registration'),
          ),
          titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
          centerTitle: Theme.of(context).appBarTheme.centerTitle,
          scrolledUnderElevation:
              Theme.of(context).appBarTheme.scrolledUnderElevation,
        ),
        body: SafeArea(
          child: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.direction == ScrollDirection.forward) {
                setState(() {
                  isVisible = true;
                });
              }
              if (notification.direction == ScrollDirection.reverse) {
                setState(() {
                  isVisible = false;
                });
              }
              return true;
            },
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 143.86, right: 143.86, top: 18.89),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(kSchoolLogo),
                      radius: 72.28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11.11, bottom: 11.1),
                    child: Text(
                      'Course Registration Form - Information\nTechnology'
                          .toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: textColor1),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    '$dayWithSuffix $formattedDate',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: textColor1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 29.28),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(4.44),
                        border: Border.all(
                          color: const Color(0xff9f9f9f),
                        ),
                      ),
                      width: 314.44,
                      height: 140,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.7, vertical: 11.1),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Name:'.toUpperCase(),
                                  style: GoogleFonts.manrope(
                                    fontSize: 11.11,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff9f9f9f),
                                  ),
                                ),
                                Text(
                                  'Mr. Emmanuel Baffoe Appiah-Ofori'
                                      .toUpperCase(),
                                  style: GoogleFonts.manrope(
                                    fontSize: 11.11,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff2A2968),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.56),
                            child: Container(
                              width: 280.78,
                              height: 15,
                              color: const Color(0x0f9f9f9f),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Index Number:'.toUpperCase(),
                                    style: GoogleFonts.manrope(
                                      fontSize: 11.11,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9f9f9f),
                                    ),
                                  ),
                                  Text(
                                    '040919887',
                                    style: GoogleFonts.manrope(
                                      fontSize: 11.11,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff2A2968),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Gender:'.toUpperCase(),
                                  style: GoogleFonts.manrope(
                                    fontSize: 11.11,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff9f9f9f),
                                  ),
                                ),
                                Text(
                                  'Male'.toUpperCase(),
                                  style: GoogleFonts.manrope(
                                    fontSize: 11.11,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff2A2968),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.56),
                            child: Container(
                              width: 280.78,
                              height: 15,
                              color: const Color(0x0f9f9f9f),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Programme:'.toUpperCase(),
                                    style: GoogleFonts.manrope(
                                      fontSize: 11.11,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9f9f9f),
                                    ),
                                  ),
                                  Text(
                                    'BSc. Information Technology'.toUpperCase(),
                                    style: GoogleFonts.manrope(
                                      fontSize: 11.11,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff2A2968),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Level:'.toUpperCase(),
                                  style: GoogleFonts.manrope(
                                    fontSize: 11.11,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff9f9f9f),
                                  ),
                                ),
                                Text(
                                  '400',
                                  style: GoogleFonts.manrope(
                                    fontSize: 11.11,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff2A2968),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.56),
                            child: Container(
                              width: 280.78,
                              height: 15,
                              color: const Color(0x0f9f9f9f),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Session:'.toUpperCase(),
                                    style: GoogleFonts.manrope(
                                      fontSize: 11.11,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9f9f9f),
                                    ),
                                  ),
                                  Text(
                                    'Morning'.toUpperCase(),
                                    style: GoogleFonts.manrope(
                                      fontSize: 11.11,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff2A2968),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.89),
                    child: Text(
                      'Courses Available for 2022/2023',
                      style: GoogleFonts.manrope(
                          fontSize: 13.33, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    'Second Semester',
                    style: GoogleFonts.manrope(
                        fontSize: 13.33, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11.11, bottom: 18.89),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Course Status Key:'.toUpperCase(),
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.33,
                            color: const Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: ' \u2611 \u2192 Course\n',
                              style: GoogleFonts.manrope(
                                color: const Color(0xfff00000),
                              ),
                            ),
                            TextSpan(
                              text:
                                  'registered, \u2610 \u2192 Course open for\n',
                              style: GoogleFonts.manrope(
                                color: const Color(0xfff00000),
                              ),
                            ),
                            TextSpan(
                              text:
                                  'registration, \u2612 \u2192 Registration closed\n',
                              style: GoogleFonts.manrope(
                                color: const Color(0xfff00000),
                              ),
                            ),
                            TextSpan(
                              text: 'for that course',
                              style: GoogleFonts.manrope(
                                color: const Color(0xfff00000),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columnSpacing: 25,
                        dataRowMaxHeight: 50,
                        horizontalMargin: 15,
                        columns: [
                          const DataColumn(
                            numeric: true,
                            label: SizedBox.shrink(),
                          ),
                          DataColumn(
                            label: Text(
                              'Course',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: textColor1),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Lecturer',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: textColor1),
                            ),
                          ),
                          DataColumn(
                              label: Text(
                                'Credit\nHours',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: textColor1),
                                textAlign: TextAlign.center,
                              ),
                              numeric: true),
                        ],
                        rows: List<DataRow>.generate(
                          creditHours.length,
                          (index) => DataRow(cells: [
                            DataCell(
                              Checkbox(
                                  value: isChecked[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked[index] = value ?? false;
                                      isVisible = isChecked.contains(true);
                                    });
                                  }),
                            ),
                            DataCell(
                              Text(
                                courseName[index].toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: textColor1, fontSize: 12.34),
                              ),
                            ),
                            DataCell(
                              Text(
                                lectureName[index].toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: textColor1, fontSize: 12.34),
                              ),
                            ),
                            DataCell(
                              Text(
                                '${creditHours[index]}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: textColor1, fontSize: 12.34),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ]),
                        ).toList()
                          ..add(
                            DataRow(cells: [
                              const DataCell(Text('')),
                              const DataCell(Text('')),
                              DataCell(
                                Text(
                                  'Total Credit\nAvailable',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: textColor1, fontSize: 12.34),
                                ),
                              ),
                              DataCell(
                                Text(
                                  '${availableCredit()}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: textColor1, fontSize: 12.34),
                                ),
                              ),
                            ]),
                          )
                          ..add(
                            DataRow(cells: [
                              const DataCell(Text('')),
                              const DataCell(Text('')),
                              DataCell(
                                Text(
                                  'Total Credit\nRegistered:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: textColor1, fontSize: 12.34),
                                ),
                              ),
                              DataCell(
                                Text(
                                  '${calculateTotalCredit()}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: textColor1, fontSize: 12.34),
                                ),
                              ),
                            ]),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: Theme.of(context).bottomNavigationBarTheme.elevation,
          landscapeLayout:
              Theme.of(context).bottomNavigationBarTheme.landscapeLayout,
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          iconSize: 31.89,
          currentIndex: currentIndex,
          type: Theme.of(context).bottomNavigationBarTheme.type,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              print('THIS IS THE CURRENT INDEX: $currentIndex');
              print('THIS IS THE VALUE INDEX: $index');
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
        floatingActionButton: isVisible
            ? FloatingActionButton(
                backgroundColor:
                    Theme.of(context).floatingActionButtonTheme.backgroundColor,
                foregroundColor:
                    Theme.of(context).floatingActionButtonTheme.foregroundColor,
                onPressed: () => Navigator.pushNamed(
                    context, PrintRegistrationPage.routeName),
                elevation:
                    Theme.of(context).floatingActionButtonTheme.elevation,
                shape: Theme.of(context).floatingActionButtonTheme.shape,
                child: Text(
                  'Print',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: textColor2),
                ),
              )
            : null);
  }
}
