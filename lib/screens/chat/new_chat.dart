import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:studyssey/components/customsearchbar.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/chat/chat_group.dart';
import 'package:studyssey/screens/chat/chat_room.dart';
import 'package:studyssey/screens/chat/create_group.dart';
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
  var searchName = "";

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
                searchName: searchName,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateGroup(),
                  ),
                );
              },
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: const AssetImage(kGroup),
                radius: 25,
              ),
              title: Text(
                'Create a Group',
                style: GoogleFonts.manrope(
                  fontSize: 16.66,
                  fontWeight: FontWeight.normal,
                  color: textColor1,
                ),
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
                  // Create a new list to modify
                  List<DocumentSnapshot> updatedDocs =
                      List.from(snapshot.data!.docs);

                  int userIndex = -1;
                  for (int i = 0; i < updatedDocs.length; i++) {
                    if (updatedDocs[i].id ==
                        FirebaseAuth.instance.currentUser!.uid) {
                      userIndex = i;
                      break;
                    }
                  }

                  if (userIndex != -1) {
                    // Swap the elements in the new list
                    var temp = updatedDocs.removeAt(userIndex);
                    updatedDocs.insert(0, temp);
                  }

                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var docs = updatedDocs[index];
                      return ListTile(
                        onTap: () {
                          print('HI THERE');
                          var selectedUser = updatedDocs[index];
                          print('SELECTED USER IS:');
                          print(selectedUser);
                          print('end of selected user');
                          print('SELECTED USER EXISTS');
                          print(selectedUser.exists);
                          if (selectedUser.exists) {
                            print('everything is true');
                            String currentUserID =
                                FirebaseAuth.instance.currentUser!.uid;
                            print(currentUserID);
                            String otherUserID =
                                selectedUser['uid'] as String? ?? '';

                            print(otherUserID);
                            String roomID =
                                generateRoomID(currentUserID, otherUserID);
                            print(roomID);
                            print('uid: ${selectedUser['uid']}');
                            print('first Name: ${selectedUser['firstName']}');
                            print('last Name: ${selectedUser['lastName']}');
                            print('time Stamp: ${selectedUser['timestamp']}');
                            print(
                                'profile Image: ${selectedUser['profileImage']}');
                            print(
                                'mobile Number: ${selectedUser['mobileNumber']}');
                            print('address: ${selectedUser['address']}');
                            print(
                                'student Email: ${selectedUser['studentEmail']}');
                            print(
                                'index Number: ${selectedUser['indexNumber']}');
                            print('isOnline: ${selectedUser['isOnline']}');
                            UserModel userModel = UserModel(
                              uid: selectedUser['uid'] ?? '',
                              firstName: selectedUser['firstName'] ?? '',
                              lastName: selectedUser['lastName'] ?? '',
                              timestamp: selectedUser['timestamp']?.toDate() ??
                                  DateTime.now(),
                              profileImage: selectedUser['profileImage'] ?? '',
                              mobileNumber: selectedUser['mobileNumber'] ?? '',
                              address: selectedUser['address'] ?? '',
                              studentEmail:
                                  selectedUser['studentEmail'] as String? ?? '',
                              indexNumber: selectedUser['indexNumber'] ?? '',
                              isOnline: selectedUser['isOnline'] ?? false,
                            );
                            print('This the room Id: $roomID');
                            print(userModel);
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ChatRoom(user: userModel, roomID: roomID),
                              ),
                              (route) => false,
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
                        trailing:
                            (docs.id == FirebaseAuth.instance.currentUser!.uid)
                                ? Text(
                                    '(You)',
                                    style: GoogleFonts.manrope(
                                        fontSize: 16.66,
                                        fontWeight: FontWeight.normal,
                                        color: textColor1),
                                  )
                                : null,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: Colors.transparent,
                        height: 5,
                      );
                    },
                    itemCount: updatedDocs.length, // Use the new list
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
