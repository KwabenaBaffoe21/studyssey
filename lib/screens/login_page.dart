import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/components/showsnackbar.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/resetpage/resetpage.dart';
import 'package:studyssey/services/firebase_auth.dart';

import 'homepage/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static String routeName = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuthService authService = FirebaseAuthService();
  bool isLoading = false;
  bool obscureText = true;
  String email = '';
  String password = '';

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    textEditingController.dispose();
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentNode = FocusScope.of(context);
    return GestureDetector(
      onTap: () {
        if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: isLoading
          ? Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )
          : Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              appBar: AppBar(
                backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
                foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
                leading: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    'images/backButton.svg',
                    height: 31.7,
                    width: 31.86,
                    theme: const SvgTheme(currentColor: iconColor1),
                  ),
                ),
                title: Text(
                  'Back',
                  style: GoogleFonts.manrope(
                    fontSize: 13.33,
                    fontWeight: FontWeight.w500,
                    color: textColor1,
                  ),
                ),
                centerTitle: false,
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.56, vertical: 19.89),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'Enter your credentials to access Studyssey',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 43.33, bottom: 35.56),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                cursorColor: buttonColor,
                                cursorHeight: 13.33,
                                keyboardType: TextInputType.emailAddress,
                                controller: textEditingController,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: textColor1),
                                validator: (val) {
                                  return RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(val!)
                                      ? null
                                      : "Please enter a valid email";
                                },
                                onChanged: (val) {
                                  setState(() {
                                    email = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  label: const Text(
                                    'Student Email',
                                    style: TextStyle(color: color5),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 28),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.44),
                                    borderSide: const BorderSide(color: color1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: color1),
                                    borderRadius: BorderRadius.circular(4.44),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.44),
                                    borderSide: const BorderSide(
                                        color: kErrorBorderColor),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 31.11),
                                child: TextFormField(
                                  cursorColor: buttonColor,
                                  cursorHeight: 13.33,
                                  keyboardType: TextInputType.text,
                                  controller: passwordController,
                                  style: GoogleFonts.manrope(
                                    fontSize: 13.33,
                                    fontWeight: FontWeight.w500,
                                    color: textColor1,
                                  ),
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'Password is required';
                                    } else if (!containSpecialCharacter(val)) {
                                      return 'Password must contain at least one special character';
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    setState(() {
                                      password = val;
                                    });
                                  },
                                  obscureText: obscureText,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          obscureText = !obscureText;
                                        });
                                      },
                                      icon: Icon(
                                        obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        size: 15.47,
                                      ),
                                    ),
                                    label: const Text(
                                      'Password',
                                      style: TextStyle(color: color5),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 28),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.44),
                                      borderSide:
                                          const BorderSide(color: color1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: color1),
                                      borderRadius: BorderRadius.circular(4.44),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.44),
                                      borderSide: const BorderSide(
                                          color: kErrorBorderColor),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _signIn();
                        },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: Text(
                          'Login',
                          style: GoogleFonts.manrope(
                            fontSize: 13.33,
                            fontWeight: FontWeight.w500,
                            color: textColor2,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 22),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                text: 'Forgot your password?\nClick ',
                                style: GoogleFonts.manrope(
                                  fontSize: 13.33,
                                  fontWeight: FontWeight.w500,
                                  color: textColor1,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'here',
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.33,
                                      color: buttonColor,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                          context,
                                          ResetPage.routeName,
                                        );
                                      },
                                  ),
                                  TextSpan(
                                    text: ' reset your password.',
                                    style: GoogleFonts.manrope(
                                      fontSize: 13.33,
                                      fontWeight: FontWeight.w500,
                                      color: textColor1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  void _signIn() async {
    String studentEmail = textEditingController.text.trim();
    String password = passwordController.text.trim();

    if (formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: studentEmail, password: password);
        User? user = userCredential.user;
        if (user != null) {
          Navigator.pushNamed(context, HomePage.routeName);
        } else {
          showSnackBar(
            'Sign In Failed',
            context,
            color1,
          );
        }
      } catch (e) {
        showSnackBar(
          '$e',
          context,
          color1,
        );
      }
    }
  }
}

bool containSpecialCharacter(String value) {
  const specialCharacters = r'[!@#\$%^&*(),.?":{}|<>]';
  return RegExp(specialCharacters).hasMatch(value);
}
