import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  static const String id = "second_route";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Variations'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to Second Route"),
              TextButton(
                onPressed: () {
                  Navigator.pop(context,"Return Value");
                },
                child: Text("Go Back To Main Route"),
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
