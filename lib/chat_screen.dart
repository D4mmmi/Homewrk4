import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the message board name passed as an argument
    final String boardName = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(boardName), // Show the name of the selected board
      ),
      body: Center(
        child: Text(
          'Chat messages for $boardName will appear here.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
