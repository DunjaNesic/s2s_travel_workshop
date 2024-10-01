import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:s2s_travel_workshop/screens/details_screen.dart';
import 'package:s2s_travel_workshop/screens/home_screen.dart';
import 'package:s2s_travel_workshop/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //using Navigator and named routes
    // return MaterialApp(
    //   initialRoute: '/',
    // routes: {
    //   '/': (context) => const Intro(),
    //   '/home': (context) => const Home(),
    //   '/details': (context) => const Details(),
    // },
    // );

//using GoRouter
final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const Intro(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const Home(),
        ),
        GoRoute(
          path: '/details',
          builder: (context, state) => const Details(),
        ),
      ],
    );

    return MaterialApp.router(
      routerConfig: router, 
      debugShowCheckedModeBanner: false,
    );
  }
}
