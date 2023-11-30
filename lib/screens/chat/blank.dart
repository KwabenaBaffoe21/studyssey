import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/components/drawer_screen.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/chat/select_profile.dart';

class Blank extends StatelessWidget {
  const Blank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          DrawerScreen(upperContent: upperContent, lowerContent: lowerContent),
      appBar: AppBar(
        elevation: Theme.of(context).appBarTheme.elevation,
        scrolledUnderElevation:
            Theme.of(context).appBarTheme.scrolledUnderElevation,
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 16),
          child: Text('Chat'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.56,
            vertical: 11.11,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: SvgPicture.asset('images/undraw_empty_re_opql 1.svg'),
              ),
              Text(
                'Hmmmm\nThis place seems very quite',
                style: GoogleFonts.manrope(
                  fontSize: 13.33,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff2a2968),
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: OutlinedButton(
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 11, horizontal: 80),
                    ),
                    side: MaterialStatePropertyAll(
                      BorderSide(
                        color: Color(0xff000000),
                      ),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const SelectProfile();
                      }),
                    );
                  },
                  child: Text(
                    'Start a new conversation',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.33,
                      color: const Color(0xff010020),
                    ),
                    textAlign: TextAlign.center,
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
