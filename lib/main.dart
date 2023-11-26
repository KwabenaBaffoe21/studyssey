import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:studyssey/routes.dart';
import 'package:studyssey/screens/homepage/home_page.dart';
import 'package:studyssey/screens/onboarding/onboarding_page.dart';
import 'package:studyssey/services/firebase_options.dart';
import 'package:studyssey/services/firebase_provider.dart';
import 'constant.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } on FirebaseException catch (e) {
    if (kDebugMode) {
      print(
        e.toString(),
      );
    }
  }
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(
    const Duration(milliseconds: 100),
  );
  FlutterNativeSplash.remove();
  runApp(const Studyssey());
}

class Studyssey extends StatelessWidget {
  const Studyssey({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FirebaseProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Studyssey',
        themeMode: ThemeMode.system,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: scaffold,
            centerTitle: true,
            elevation: 0,
            foregroundColor: textColor1,
            titleTextStyle: GoogleFonts.manrope(
                fontSize: 13.33,
                fontWeight: FontWeight.w500,
                color: textColor1),
            toolbarHeight: 53.92,
            scrolledUnderElevation: 0,
          ),
          useMaterial3: true,
          textTheme: TextTheme(
            titleMedium: GoogleFonts.manrope(
                fontSize: 13.33, fontWeight: FontWeight.w500),
            titleLarge: GoogleFonts.manrope(
                fontSize: 24.44, fontWeight: FontWeight.w700),
            titleSmall: GoogleFonts.manrope(
                fontWeight: FontWeight.w500, fontSize: 11.11),
            bodyLarge:
                GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w700),
            bodyMedium:
                GoogleFonts.manrope(fontSize: 13, fontWeight: FontWeight.w600),
            bodySmall: GoogleFonts.manrope(
                fontSize: 13.33, fontWeight: FontWeight.w700),
            displayLarge:
                GoogleFonts.manrope(fontSize: 36, fontWeight: FontWeight.w500),
            displayMedium: GoogleFonts.manrope(
                fontSize: 22.22, fontWeight: FontWeight.w700),
            displaySmall:
                GoogleFonts.manrope(fontSize: 9, fontWeight: FontWeight.w500),
            labelMedium: GoogleFonts.manrope(
                fontWeight: FontWeight.w600, fontSize: 14.81),
            labelSmall: GoogleFonts.manrope(
                fontSize: 6.67, fontWeight: FontWeight.w500),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            elevation: 0,
            backgroundColor: scaffold,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            unselectedLabelStyle: GoogleFonts.manrope(
                fontSize: 6.67, fontWeight: FontWeight.w500),
            selectedLabelStyle: GoogleFonts.manrope(
                fontWeight: FontWeight.w500, fontSize: 6.67),
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            elevation: 0,
            backgroundColor: buttonColor,
            foregroundColor: textColor2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.47),
            ),
          ),
          drawerTheme: const DrawerThemeData(backgroundColor: kDrawerColor),
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: scaffold),
          scaffoldBackgroundColor: scaffold,
          primaryColor: color1,
          splashColor: splashScreen,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(0),
              backgroundColor: const MaterialStatePropertyAll(buttonColor),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              fixedSize: const MaterialStatePropertyAll(
                Size(307.78, 44.44),
              ),
            ),
          ),
        ),
        initialRoute: FirebaseAuth.instance.currentUser == null
            ? OnboardingPage.routeName
            : HomePage.routeName,
        routes: routes,
      ),
    );
  }
}
