import 'package:flutter/material.dart';

// display error massage to user
void displayMassageToUser(String massage, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(massage),
    ),
  );
}
