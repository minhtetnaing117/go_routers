import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/pages/lifecycle_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(height: 30),
          CircleAvatar(
            radius: 90,
            backgroundImage: NetworkImage(
              'https://t3.ftcdn.net/jpg/05/67/22/88/360_F_567228862_J1y0jfZ8l0LcXZpOwKfhK4KpmnZkYoqb.jpg'
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.delivery_dining),
            title: const Text('Detail Page'),
            onTap: () {
              context.go('/detailsPage/Detail Page');
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.label_important_rounded),
            title: const Text('Life cycle Page'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute (
                    builder: (context) => const LifecyclePage(),
                  ),
              );
              // context.go('/lifecyclePage');
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.sailing),
            title: const Text('Second Page'),
            onTap: () {
              context.go('/secondPage');
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.mail),
            title: const Text('Main Page'),
            onTap: () {
              context.go('/mainPage');
            },
          ),
        ],
      ),
    );
  }
}
