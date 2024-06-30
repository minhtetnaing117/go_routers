import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/pages/details_page.dart';
import 'package:go_routers/pages/home_page.dart';
import 'package:go_routers/pages/main_page.dart';
import 'package:go_routers/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
        builder: (context, state) => const HomePage()
      ),
      GoRoute(
          path: '/detailsPage',
          builder: (context, state) => DetailsPage(title: 'Flutter Guys')
      ),
    ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}