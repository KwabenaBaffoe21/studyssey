import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';
import '../screens/loginpage.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({
    super.key,
    required this.upperContent,
    required this.lowerContent,
  });

  final List<Widget> upperContent;
  final List<Widget> lowerContent;

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
void logout() async{
  await FirebaseAuth.instance.signOut();
  Navigator.pushReplacementNamed(context, LoginPage.routeName);
}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
      width: MediaQuery.of(context).size.width*0.9,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 11, left: 118),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColorFiltered(
                    colorFilter:
                        const ColorFilter.mode(color1, BlendMode.srcIn),
                    child: SvgPicture.asset(
                      kLogo,
                      height: 25,
                      width: 110,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 31.11),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.close,
                        size: 24,
                        color: textColor1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 11.17, vertical: 15.74),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(kCurrentProfile),
                    radius: 40,
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          Text(
                            'Emmanuel B. Appiah-Ofori\n040919000 | BIT Level 300',
                            style: GoogleFonts.manrope(
                                fontSize: 13.33,
                                fontWeight: FontWeight.w500,
                                color: textColor1),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                              width: 168,
                              height: 26,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3.33),
                                    ),
                                  ),
                                  side: const MaterialStatePropertyAll(
                                    BorderSide(color: textColor1, width: 0.67),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'View Profile',
                                  style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8.89,
                                      color: textColor6),
                                ),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: 300,
                height: 278.22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.42),
                    color: textColor2),
                // padding: const EdgeInsets.symmetric(horizontal: 22.2,vertical: 17.8),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return widget.upperContent[index];
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    indent: 22.22,
                    endIndent: 22.22,
                    height: 0.1,
                  ),
                  itemCount: 5,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 24, left: 20, right: 20,bottom: 40),
              child: Container(
                width: 300,
                height: 160.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.42),
                    color: textColor2),
                child: ListView.separated(
                    itemBuilder: (context, index) => widget.lowerContent[index],
                    separatorBuilder: (context, index) => const Divider(
                          height: 0.1,
                          endIndent: 22.22,
                          indent: 22.22,
                        ),
                    itemCount: 3),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: OutlinedButton(
                  onPressed: () {logout();},
                  style: const ButtonStyle(
                    side: MaterialStatePropertyAll(BorderSide.none),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        kLogoutIcon,
                        height: 23.05,
                        width: 23.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.49,top: 0.5,bottom: 0.5),
                        child: Text(
                          'Log-out',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w700,
                            fontSize: 13.33,
                            color: const Color(0xffea3434),
                          ),
                        ),
                      )
                    ],
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
