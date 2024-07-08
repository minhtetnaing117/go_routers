import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/pages/drawer_page.dart';

import 'package:go_routers/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        elevation: 0,
      ),
      drawer: const DrawerPage(),

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white
          ),
          onPressed: () async {
            // context.go('/detailsPage/Fabrice');
            context.goNamed('detailsPage', pathParameters: { 'name': 'MHN'});
            // Navigator.of(context).pushAndRemoveUntil(
            //     MaterialPageRoute(builder: (context)=>
            //         DetailsPage(title: "Flutter Guy")),
            //         (route) => false);
          },
          child: const Text("Redirect to details Page"),

        ),

      ),

    );
  }
}