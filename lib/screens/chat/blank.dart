import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Blank(),
    ),
  );
}

class Blank extends StatelessWidget {
  const Blank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 31.11, top: 11.61),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort,
                      size: 31.65,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.61, left: 104),
                  child: Text(
                    'Chat',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w500, fontSize: 13.33),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 252),
              child: SvgPicture.asset('images/Blank_chat.svg'),
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
              padding: const EdgeInsets.only(top: 193.22),
              child: SizedBox(
                width: 332.22,
                height: 44.44,
                child: OutlinedButton(
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.only(top: 11, bottom: 11),
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
                  onPressed: () {},
                  child: Text(
                    'Start a new conversation',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.33,
                      color: const Color(0xff010020),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
