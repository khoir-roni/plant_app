import 'package:flutter/material.dart';
import 'package:plant_app/pages/first_page.dart';
import 'package:plant_app/pages/home_page_screen.dart';
import 'package:plant_app/pages/login_screen.dart';
import 'package:plant_app/widgets/thames.dart';

void main() => runApp(PlantApp());

class PlantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: green,
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: HomePageScreen(),
    );
  }
}
