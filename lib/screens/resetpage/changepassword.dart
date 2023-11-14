import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/components/custombutton.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/loginpage.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  static String routeName = 'ChangePasswordPage';

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController passwordController = TextEditingController();
  late String password;
  final formKey = GlobalKey<FormState>();
  late bool toggleNewPassword = false;
  late bool toggleConfirmPassword = false;
  late bool obscureText = true;

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            'images/backButton.svg',
            width: 31,
            height: 31,
            theme: const SvgTheme(currentColor: color1),
          ),
        ),
        title: const Text('Request Password Change'),
        titleTextStyle: GoogleFonts.manrope(
          fontWeight: FontWeight.w500,
          fontSize: 13.33,
          color: textColor1,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 25),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
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
                              toggleNewPassword = true;
                              obscureText = false;
                            });
                          },
                          icon: toggleNewPassword == false
                              ? const Icon(
                                  Icons.visibility_off,
                                  size: 15.47,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  size: 15.47,
                                ),
                        ),
                        label: const Text(
                          'Password',
                          style: TextStyle(color: color5),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12, horizontal: 28),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.44),
                          borderSide: const BorderSide(color: color1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: color1),
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.44),
                          borderSide: const BorderSide(color: kErrorBorderColor),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.79),
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
                                toggleConfirmPassword = true;
                                obscureText = false;
                              });
                            },
                            icon: toggleConfirmPassword == false
                                ? const Icon(
                                    Icons.visibility_off,
                                    size: 15.47,
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    size: 15.47,
                                  ),
                          ),
                          label: const Text(
                            'Password',
                            style: TextStyle(color: color5),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 28),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.44),
                            borderSide: const BorderSide(color: color1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: color1),
                            borderRadius: BorderRadius.circular(4.44),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.44),
                            borderSide: const BorderSide(color: kErrorBorderColor),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            CustomButton(
              text: 'Reset password',
              route: LoginPage.routeName,
            )
          ],
        ),
      ),
    );
  }
}
