import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/chat/chat_group.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        leading: SvgPicture.asset(
          kBackButtonIcon,
          height: 31,
          width: 31,
          theme: const SvgTheme(
            currentColor: color1,
          ),
        ),
        title: const Text('Create New Group'),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
        elevation: Theme.of(context).appBarTheme.elevation,
        scrolledUnderElevation: Theme.of(context).appBarTheme.elevation,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25.56, vertical: 11.11),
          child: Column(children: [
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              cursorColor: color1,
              cursorHeight: 16.66,
              style: GoogleFonts.manrope(
                fontSize: 16.66,
                fontWeight: FontWeight.normal,
                color: textColor1,
              ),
              decoration: InputDecoration(
                hintText: 'Group Name',
                hintStyle: GoogleFonts.manrope(
                  fontSize: 16.66,
                  fontWeight: FontWeight.normal,
                  color: color5,
                ),
                contentPadding:
                    const EdgeInsets.only(left: 28, top: 7, bottom: 7),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.44),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.44),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: TextField(
                controller: descriptionController,
                keyboardType: TextInputType.text,
                cursorColor: color1,
                cursorHeight: 16.66,
                style: GoogleFonts.manrope(
                  fontSize: 16.66,
                  fontWeight: FontWeight.normal,
                  color: textColor1,
                ),
                decoration: InputDecoration(
                  hintText: 'Group Description',
                  hintStyle: GoogleFonts.manrope(
                    fontSize: 16.66,
                    fontWeight: FontWeight.normal,
                    color: color5,
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 28, top: 7, bottom: 7),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.44),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.44),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatGroup(),
            ),
          );
        },
        backgroundColor: buttonColor,
        shape: const CircleBorder(eccentricity: 1.0),
        child: const Icon(
          Icons.arrow_forward,
          size: 31,
        ),
      ),
    );
  }
}
