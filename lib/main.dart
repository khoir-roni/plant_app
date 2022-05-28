import 'package:flutter/material.dart';
import 'package:plant_app/pages/first_page.dart';
import 'package:plant_app/pages/login_screen.dart';
import 'package:plant_app/widgets/thames.dart';

void main() => runApp(PlantApp());

class PlantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
