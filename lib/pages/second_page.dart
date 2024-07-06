import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/pages/drawer_page.dart';

class SecondPage extends StatelessWidget {
  final String message;
  const SecondPage({
    Key? key,
    this.message = "New message"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        elevation: 0,
      ),
      drawer: const DrawerPage(),
      body: Column(
        children: [
          Center(child: Text(message)),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white
              ),
              onPressed: () {
                context.goNamed('mainPage');
              },
              child: const Text("Redirect to main Page"),
            ),
          ),
        ],

      ),
    );
  }
}