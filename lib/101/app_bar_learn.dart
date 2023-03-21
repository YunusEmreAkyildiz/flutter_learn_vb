import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// If we want to make the AppBar transparent:
/*
  backgroundColor: Colors.transparent,
   elevation: 0,
*/

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'Hello, User';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        //automaticallyImplyLeading: false, // It means: don't put the back button automatically.
        // For best practice, we added the code below to the inside of MaterialApp -> theme.
        /*
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light, // This is about the device's status bar's color.
        */
        leadingWidth: 50, // Default is 56.0
        actionsIconTheme: IconThemeData(color: Colors.green.shade400, size: 25),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
