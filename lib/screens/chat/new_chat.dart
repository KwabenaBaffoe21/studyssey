import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:studyssey/components/customsearchbar.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/chat/chat_room.dart';
import 'package:studyssey/utilize/room_id.dart';
import 'package:studyssey/utilize/user_model.dart';

class NewChat extends StatefulWidget {
  const NewChat({
    super.key,
  });

  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        elevation: Theme.of(context).appBarTheme.elevation,
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
        scrolledUnderElevation:
            Theme.of(context).appBarTheme.scrolledUnderElevation,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            kBackButtonIcon,
            width: 31,
            height: 31,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 16),
          child: Text('New Chat'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.56, vertical: 11),
              child: CustomSearchBar(
                textEditingController: textEditingController,
                title: 'Search',
                imagePath: kSearchIcon,
                color: color6,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 11, horizontal: 25.56),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'select a profile to start a new chat'.toUpperCase(),
                  style: GoogleFonts.manrope(
                    fontSize: 13.33,
                    fontWeight: FontWeight.normal,
                    color: color5,
                  ),
                ),
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('student').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Container(
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator(),
                  );
                } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return Center(
                    child: Text(
                      'There is nothing to see here',
                      style: GoogleFonts.manrope(
                        fontSize: 16.66,
                        fontWeight: FontWeight.w700,
                        color: textColor1,
                      ),
                    ),
                  );
                } else {
                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var docs = snapshot.data!.docs[index];
                      return ListTile(
                        onTap: () {
                          var selectedUser = snapshot.data!.docs[index];
                          if (selectedUser != null && selectedUser.exists) {
                            String currentUserID =
                                FirebaseAuth.instance.currentUser!.uid;
                            String otherUserID = selectedUser['uid'] ?? '';
                            String roomID =
                                generateRoomID(currentUserID, otherUserID);
                            UserModel userModel = UserModel(
                              uid: selectedUser['uid'] ?? '',
                              firstName: selectedUser['firstName'] ?? '',
                              lastName: selectedUser['lastName'] ?? '',
                              timestamp: selectedUser['timestamp'].toDate(),
                              profileImage: selectedUser['profileImage'] ?? '',
                              mobileNumber: selectedUser['mobileNumber'] ?? '',
                              address: selectedUser['address'] ?? '',
                              studentEmail: selectedUser['studentEmail'] ?? '',
                              indexNumber: selectedUser['indexNumber'] ?? '',
                              isOnline: selectedUser['isOnline'] ?? false,
                            );

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatRoom(
                                  user: userModel,
                                  roomID: roomID,
                                ),
                              ),
                            );
                          }
                        },
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(docs['profileImage']),
                          radius: 25,
                        ),
                        title: Text(
                          '${docs['firstName']} ${docs['lastName']}',
                          style: GoogleFonts.manrope(
                            fontSize: 16.66,
                            fontWeight: FontWeight.w700,
                            color: textColor1,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: Colors.transparent,
                        height: 5,
                      );
                    },
                    itemCount: snapshot.data!.docs.length,
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
