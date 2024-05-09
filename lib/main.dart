import 'package:flutter/material.dart';
import 'package:navigation_techniques/home.dart';
import 'package:navigation_techniques/second_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.id,
      routes: {
        Home.id:(context) {
          return Home();
        },
        SecondRoute.id:(context) => SecondRoute(),
      },
    );
  }
}
