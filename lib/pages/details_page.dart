import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String message;
  DetailsPage({required this.title, this.message = "Default message"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(message),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
              ),
              onPressed: () {
                Navigator.pop(context, "Learning is key");
              },
              child: Text("Get back to previous page"),
            )
          ],
        ),
      ),
    );
  }
}