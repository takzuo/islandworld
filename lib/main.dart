import 'package:flutter/material.dart';
import 'package:islandworld/constants.dart';
import 'package:islandworld/pages/landing_page.dart';
import 'package:islandworld/pages/matriz_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Island World',
      theme: ThemeData(
        primaryColor: colorFirts,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LandingPage(),
      routes: {
        "/landingpage": (context) => LandingPage(),
        "/matrizpage": (context) => MatrizPage(),
      },
    );
  }
}



