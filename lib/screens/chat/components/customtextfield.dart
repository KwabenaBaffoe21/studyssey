import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textController,
  });

  final TextEditingController textController;

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
              keyboardType: TextInputType.multiline,
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
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
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

/*Future<void> sendText(context, textController) async {
  if (textController.text.isNotEmpty) {
    await FirebaseFirestoreService.addTextMessage(
        content: textController.text, receiverID: );
  }
}*/
