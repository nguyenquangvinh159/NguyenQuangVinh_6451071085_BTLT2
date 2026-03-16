import 'package:flutter/material.dart';

class OptionDialog {

  static void show(BuildContext context) {

    showDialog(

      context: context,

      builder: (context) {

        return SimpleDialog(

          title: Text("Choose an option"),

          children: [

            SimpleDialogOption(
              child: Text("Option 1: Proceed"),
              onPressed: () {
                Navigator.pop(context);
                _showSnackBar(context, "Selected: Option 1 - Proceed");
              },
            ),

            SimpleDialogOption(
              child: Text("Option 2: Settings"),
              onPressed: () {
                Navigator.pop(context);
                _showSnackBar(context, "Selected: Option 2 - Settings");
              },
            ),

            SimpleDialogOption(
              child: Text("Option 3: Cancel"),
              onPressed: () {
                Navigator.pop(context);
                _showSnackBar(context, "Selected: Option 3 - Cancel");
              },
            ),

          ],

        );
      },

    );

  }

  static void _showSnackBar(BuildContext context, String message) {

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );

  }

}