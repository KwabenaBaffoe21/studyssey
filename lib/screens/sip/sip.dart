import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/sip/profile.dart';
import 'package:studyssey/screens/sip/register.dart';
import 'package:studyssey/screens/sip/result/result.dart';
import '../homepage/homepage.dart';

class SIPortal extends StatefulWidget {
  const SIPortal({super.key});

  static String routeName = 'SIP';

  @override
  State<SIPortal> createState() => _SIPortalState();
}

class _SIPortalState extends State<SIPortal> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> destinationScreens = [
      const SIPortal(),
      const SRegister(),
      const HomePage(),
      const SResult(),
      const SProfile()
    ];
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: Theme
            .of(context)
            .appBarTheme
            .elevation,
        backgroundColor: Theme
            .of(context)
            .appBarTheme
            .backgroundColor,
        foregroundColor: Theme
            .of(context)
            .appBarTheme
            .foregroundColor,
        toolbarHeight: Theme
            .of(context)
            .appBarTheme
            .toolbarHeight,
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 16),
          child: Text('SIP'),
        ),
        titleTextStyle: Theme
            .of(context)
            .appBarTheme
            .titleTextStyle,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40.56),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.56,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                          text: 'Hello\n',
                          style: Theme
                              .of(context)
                              .textTheme
                              .titleSmall,
                          children: [
                            TextSpan(
                              text: 'Emmanuel Baffoe\nAppiah-Ofori',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleLarge,
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 90.33, right: 100.5),
                  child: const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(kCurrentProfile),
                  ),
                ),
              ),
              const SizedBox(
                height: 11.1,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: color6,
                  height: 322.77,
                  width: 314.44,
                  padding: const EdgeInsets.symmetric(
                      vertical: 11.11, horizontal: 22.2),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Faculty:',
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                              color: textColor3,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Faculty of Computing and\n Information System'
                                  .toUpperCase(),
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                color: textColor4,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Department:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Information Technology'.toUpperCase(),
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Programme:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Bsc. Information Technology'.toUpperCase(),
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Level:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '400',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Session:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Morning'.toUpperCase(),
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Index Number:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '040919887',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Campus:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Tesano'.toUpperCase(),
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mobile Number:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '0240318640',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cohort:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Credit Required:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '139',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Credit Taken:',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '125',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: textColor4,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: Theme
            .of(context)
            .bottomNavigationBarTheme
            .elevation,
        landscapeLayout:
        Theme
            .of(context)
            .bottomNavigationBarTheme
            .landscapeLayout,
        showUnselectedLabels:
        Theme
            .of(context)
            .bottomNavigationBarTheme
            .showUnselectedLabels,
        showSelectedLabels:
        Theme
            .of(context)
            .bottomNavigationBarTheme
            .showSelectedLabels,
        unselectedItemColor:
        Theme
            .of(context)
            .bottomNavigationBarTheme
            .unselectedItemColor,
        selectedItemColor:
        Theme
            .of(context)
            .bottomNavigationBarTheme
            .selectedItemColor,
        backgroundColor:
        Theme
            .of(context)
            .bottomNavigationBarTheme
            .backgroundColor,
        iconSize: 31.89,
        currentIndex: _currentIndex,
        selectedLabelStyle:
        Theme
            .of(context)
            .bottomNavigationBarTheme
            .selectedLabelStyle,
        unselectedLabelStyle:
        Theme
            .of(context)
            .bottomNavigationBarTheme
            .unselectedLabelStyle,
        type: Theme
            .of(context)
            .bottomNavigationBarTheme
            .type,
        useLegacyColorScheme: false,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
              builder: (context) => destinationScreens[index]), (
              route) => true);
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
    );
  }
}
