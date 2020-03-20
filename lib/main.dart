import 'package:flutter/material.dart';
import 'package:zomato/screens/main_screen.dart';
import 'package:zomato/screens/mapscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: {
        MapScreen.routeName: (ctx) => MapScreen(),
      },
    );
  }
}
