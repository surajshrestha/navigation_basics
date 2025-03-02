import 'package:flutter/material.dart';
import 'package:navigation_techniques/util/route_name.dart';

class Home extends StatefulWidget {
  final String returnValue = "";

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
              onPressed: () async {
                final result = await Navigator.pushNamed(
                    context, RoutesName.second_route,
                    arguments: {
                      'name': 'Suraj',
                      'designation': 'Software Engineer',
                    });
                print(result);
              },
              child: Text("Go To Second Route"),
              style: ElevatedButton.styleFrom(foregroundColor: Colors.blue)),
        ),
      ),
    );
  }
}
