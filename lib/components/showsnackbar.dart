import 'package:flutter/material.dart';
import 'package:studyssey/constant.dart';

void showSnackBar(message, context, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      duration: const Duration(seconds: 5),
      showCloseIcon: true,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      dismissDirection: DismissDirection.endToStart,
      content: Text(
        message,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor2),
        softWrap: true,
      ),
    ),
  );
}
