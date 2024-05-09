import 'package:flutter/material.dart';
import 'package:navigation_techniques/home.dart';
import 'package:navigation_techniques/second_route.dart';
import 'package:navigation_techniques/util/route_name.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => Home());
      case RoutesName.second_route:
        return MaterialPageRoute(builder: (context) => SecondRoute());
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });
    }
  }
}