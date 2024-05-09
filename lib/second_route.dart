import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  final String value;
  SecondRoute(this.value);

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
              Text("Welcome to Second Route : ${value}"),
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
