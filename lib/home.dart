import 'package:flutter/material.dart';
import 'package:navigation_techniques/second_route.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Techniques"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) {
                    return SecondRoute();
                  },),
                );
              },
              child: Text("Go To Second Route"),
              style: ElevatedButton.styleFrom(foregroundColor: Colors.blue)),
        ),
      ),
    );
  }
}
