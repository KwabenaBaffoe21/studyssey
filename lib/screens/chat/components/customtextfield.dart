import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:studyssey/utilize/user_model.dart';
import '../../../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textController,
    required this.roomID,
    required this.userModel,
  });

  final TextEditingController textController;
  final String roomID;
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: TextField(
              controller: textController,
              cursorHeight: 16.66,
              cursorColor: color1,
              autocorrect: true,
              keyboardType: TextInputType.text,
              style: GoogleFonts.manrope(
                fontSize: 16.66,
                fontWeight: FontWeight.w500,
                color: textColor1,
              ),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: 'Message...',
                hintStyle: GoogleFonts.manrope(
                  fontSize: 16.66,
                  fontWeight: FontWeight.w500,
                  color: textColor3,
                ),
                contentPadding: const EdgeInsets.only(
                  left: 28,
                  top: 5,
                  bottom: 5,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: buttonColor),
              child: IconButton(
                onPressed: () {
                  DocumentReference documentReference =
                      FirebaseFirestore.instance.collection('messages').doc();

                  try {
                    documentReference.set({
                      'message': textController.text.trim(),
                      'roomID': roomID,
                      'uid': userModel.uid,
                    });
                  } catch (e) {
                    print('Error creating document: $e');
                  }
                  textController.clear();
                },
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  color: color7,
                  size: 31,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
