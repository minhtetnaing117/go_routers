import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/pages/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Tuto"),
        elevation: 10,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white
            ),
            onPressed: () async {
              context.goNamed('detailsPage');
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(builder: (context)=>
              //         DetailsPage(title: "Flutter Guy")),
              //         (route) => false);
            },
            child: Text("Redirect to details Page"),
          ),
        ),
      ),
    );
  }
}