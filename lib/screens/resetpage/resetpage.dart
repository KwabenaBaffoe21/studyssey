import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/components/custombutton.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/resetpage/changepassword.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  static String routeName = 'RegisterPage';

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  TextEditingController textEditingController = TextEditingController();
  late String email;
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
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
                child: TextFormField(
                  cursorColor: buttonColor,
                  cursorHeight: 13.33,
                  keyboardType: TextInputType.emailAddress,
                  controller: textEditingController,
                  style: GoogleFonts.manrope(
                    fontSize: 13.33,
                    fontWeight: FontWeight.w500,
                    color: textColor1,
                  ),
                  validator: (val) {
                    return RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
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
              ),
            ),
            CustomButton(
              text: 'Reset password',
              route: ChangePassword.routeName,
            )
          ],
        ),
      ),
    );
  }
}