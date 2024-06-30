// lib/routes/app_router.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/pages/details_page.dart';
import 'package:go_routers/pages/home_page.dart';
import 'package:go_routers/pages/main_page.dart';
import 'package:go_routers/pages/second_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/detailsPage/:name',
      name: 'detailsPage',
      builder: (context, state) {
        final name = state.pathParameters['name'];
        return DetailsPage(title: '$name');
      },
    ),
    GoRoute(
      path: '/secondPage',
      name: 'secondPage',
      builder: (context, state) {
        final message = state.extra as String? ?? 'New message';
        return SecondPage(message: message);
      },
    ),
    GoRoute(
      path: '/mainPage',
      name: 'mainPage',
      builder: (context, state) => const MainPage(),
    ),
  ],
);
