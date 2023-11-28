import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/screens/sip/register.dart';
import 'package:studyssey/screens/sip/result/result.dart';
import 'package:studyssey/screens/sip/sip.dart';
import 'package:studyssey/screens/sip/component/read_only_text_field.dart';
import '../../constant.dart';
import '../homepage/home_page.dart';

class SProfile extends StatefulWidget {
  const SProfile({super.key});

  @override
  State<SProfile> createState() => _SProfileState();
}

class _SProfileState extends State<SProfile> {
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
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        foregroundColor: const Color(0xff000000),
        toolbarHeight: 53.92,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 16),
          child: Text('Profile'),
        ),
        titleTextStyle: GoogleFonts.manrope(
          fontSize: 13.33,
          fontWeight: FontWeight.w500,
          color: const Color(0xff000000),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.82),
                child: Container(
                  alignment: Alignment.center,
                  child: const Badge(
                    backgroundColor: Color(0xff6610f2),
                    label: Icon(
                      Icons.camera_alt_outlined,
                      color: Color(0xffffffff),
                      size: 15.23,
                    ),
                    largeSize: 25,
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(
                        top: 4, bottom: 4.39, left: 4.39, right: 4.39),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(kCurrentProfile),
                      radius: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 46),
                child: Text(
                  'Account Details',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10, right: 20.6, left: 20.6),
                child: Container(
                  width: 318.8,
                  decoration: BoxDecoration(
                    color: const Color(0xfff2f3f5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ReadOnlyTextField(label: 'First Name', text: 'Bobby'),
                      ReadOnlyTextField(label: 'Last Name', text: 'Brown'),
                      ReadOnlyTextField(label: 'Nationality', text: 'Ghanaian'),
                      ReadOnlyTextField(
                          label: 'School Email',
                          text: '040919887@live.gctu.edu.gh'),
                      ReadOnlyTextField(
                          label: 'Email address', text: 'bbrown246@gmail.com'),
                      ReadOnlyTextField(label: 'SSNIT Number', text: ''),
                      ReadOnlyTextField(
                          label: 'Date of Birth', text: '1999-01-01'),
                      ReadOnlyTextField(
                          label: 'Phone Number', text: '0240000000'),
                      ReadOnlyTextField(label: 'Gender', text: 'Male'),
                      ReadOnlyTextField(label: 'Entry Level', text: '100'),
                      ReadOnlyTextField(label: 'Hall', text: ''),
                      ReadOnlyTextField(label: 'Session', text: 'Morning'),
                      ReadOnlyTextField(
                          label: 'Program',
                          text: 'BSc. Information Technology'),
                      ReadOnlyTextField(label: 'Current Level', text: '400'),
                      ReadOnlyTextField(label: 'Major', text: ''),
                      ReadOnlyTextField(
                          label: 'Date of Admission', text: '2019-09'),
                      ReadOnlyTextField(
                          label: 'Date of Completion', text: '2023-10')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 46, bottom: 10),
                child: Text(
                  'Emergence Contact',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.6, right: 20.6, bottom: 25),
                child: Container(
                  width: 318.8,
                  // height: 290,
                  decoration: BoxDecoration(
                      color: const Color(0xfff2f3f5),
                      borderRadius: BorderRadius.circular(5)),
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ReadOnlyTextField(label: 'Name', text: 'Mary Anna'),
                      ReadOnlyTextField(
                          label: 'Phone Number', text: '0270009999'),
                      ReadOnlyTextField(label: 'Contact Email', text: ''),
                      ReadOnlyTextField(label: 'Email Address', text: ''),
                    ],
                  ),
                ),
              )
            ],
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
    );
  }
}
