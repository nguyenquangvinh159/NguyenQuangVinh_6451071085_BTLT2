import 'package:flutter/material.dart';
import '../widgets/option_dialog.dart';

class DialogView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Simple Dialog Demo"),
      ),

      body: Center(

        child: ElevatedButton(

          child: Text("SHOW DIALOG"),

          onPressed: () {
            OptionDialog.show(context);
          },

        ),

      ),

    );
  }
}