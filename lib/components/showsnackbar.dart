import 'package:flutter/material.dart';

void showSnackBar(String message, BuildContext context, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      duration: const Duration(seconds: 5),
      showCloseIcon: true,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.2,
      dismissDirection: DismissDirection.endToStart,
      content: Text(
        message,
        style: Theme.of(context).textTheme.bodyMedium,
        softWrap: true,
      ),
    ),
  );
}
