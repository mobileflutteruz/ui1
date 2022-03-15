
import 'package:flutter/material.dart';
import 'package:ui_1/screens/home_page.dart';
import 'package:ui_1/screens/second_page.dart';

class MyRouter {
  Route? ongenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(         
            builder: (context) => const MyHomePage()         
        );
       case '/home':
        return MaterialPageRoute(         
            builder: (context) => const SecondPage()         
        );
    }
    return null;
  }
}
