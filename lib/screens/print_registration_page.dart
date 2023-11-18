
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey/constant.dart';

class PrintRegistrationPage extends StatefulWidget {
  const PrintRegistrationPage({super.key});

  static String routeName = 'PrintRegPage';

  @override
  State<PrintRegistrationPage> createState() => _PrintRegistrationPageState();
}

class _PrintRegistrationPageState extends State<PrintRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          kBackButtonIcon,
          height: 31,
          width: 31,
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 16),
          child: Text('Print Registered Courses'),
        ),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        elevation: Theme.of(context).appBarTheme.elevation,
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
        scrolledUnderElevation:
            Theme.of(context).appBarTheme.scrolledUnderElevation,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.56, vertical: 11.11),
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}

