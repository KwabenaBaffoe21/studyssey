import 'package:flutter/material.dart';

_showBottomSheet(
    BuildContext context, TextEditingController textEditingController) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return TextField(
          controller: textEditingController,
          cursorColor: Theme.of(context).primaryColor,
          cursorHeight: 13.33,
          keyboardType: TextInputType.multiline,
          autocorrect: true,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(left: 28),
          ),
        );
      });
}
