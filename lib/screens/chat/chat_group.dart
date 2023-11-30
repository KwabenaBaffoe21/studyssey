import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/components/customsearchbar.dart';
import 'package:studyssey/constant.dart';

class SelectParticipants extends StatefulWidget {
  const SelectParticipants({super.key});

  @override
  State<SelectParticipants> createState() => _SelectParticipantsState();
}

class _SelectParticipantsState extends State<SelectParticipants> {
  final textEditingController = TextEditingController();
  var searchName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        elevation: Theme.of(context).appBarTheme.elevation,
        scrolledUnderElevation:
            Theme.of(context).appBarTheme.scrolledUnderElevation,
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
        title: const Text('Select participants'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            kBackButtonIcon,
            height: 31,
            width: 31,
            theme: const SvgTheme(currentColor: color1),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 11.0,
                bottom: 20.0,
                left: 25.56,
                right: 25.56,
              ),
              child: CustomSearchBar(
                textEditingController: textEditingController,
                title: 'Search',
                searchName: searchName,
                color: color6,
                imagePath: kSearchIcon,
              ),
            ),
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('student')
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(),
                    );
                  } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 220),
                      child: Center(
                        child: Text(
                          'There is nothing to see here',
                          style: GoogleFonts.manrope(
                            fontSize: 16.66,
                            fontWeight: FontWeight.w700,
                            color: textColor4,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var data = snapshot.data!.docs[index];
                        return snapshot.data!.docs[index].id ==
                                FirebaseAuth.instance.currentUser!.uid
                            ? const SizedBox()
                            : ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(data['profileImage']),
                                  backgroundColor: color6,
                                  radius: 25,
                                ),
                                title: Text(
                                  '${data['firstName']} ${data['lastName']}',
                                  style: GoogleFonts.manrope(
                                    fontSize: 16.66,
                                    fontWeight: FontWeight.normal,
                                    color: textColor1,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              );
                      },
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
