import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/pages/details_page.dart';
import 'package:go_routers/pages/home_page.dart';
import 'package:go_routers/pages/main_page.dart';
import 'package:go_routers/pages/second_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentIndex = 0;

  final List<String> _routeNames = ['/', 'secondPage', 'mainPage'];

  List<Widget> body = const<Widget>[
    // Center(
    //   child: ElevatedButton(
    //     onPressed: null, // Placeholder for the onPressed function
    //     child: Text("Get back to previous page"),
    //   ),
    // ),
    HomePage(),
    SecondPage(),
    MainPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    context.goNamed(_routeNames[index]); // Navigating to the named route based on index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _currentIndex,
        // onTap: (int newIndex){
        //   setState(() {
        //     _currentIndex = newIndex;
        //   });
        //
        // },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(Icons.menu)
          ),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person)
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
