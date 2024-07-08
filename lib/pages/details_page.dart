import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/pages/drawer_page.dart';
import 'package:go_routers/pages/tab_page.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String message;
  const DetailsPage({required this.title, this.message = "Default message"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      drawer: const DrawerPage(),
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
                context.goNamed('home');
                // Navigator.pop(context, "Learning is key");
              },
              child: Text("Get back to previous page"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
              ),
              onPressed: () {
                context.goNamed('secondPage', extra: 'Message to Second Page');
                // Navigator.pop(context, "Learning is key");
              },
              child: Text("Get back to Second page"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
              ),
              onPressed: () {
                context.goNamed('lifecyclePage');
                // Navigator.pop(context, "Learning is key");
              },
              child: Text("Head to Lifecycle page"),
            ),
            // const TabPage()
          ],
        ),
      ),
    );
  }
}