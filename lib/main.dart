import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';

import 'package:plant_app/widgets/thames.dart';

void main() => runApp(PlantApp());

// ignore: use_key_in_widget_constructors
class PlantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: green,
        // ignore: deprecated_member_use
        accentColor: const Color(0xFFD8ECF1),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
      ),
      home: const WelcomePage(),
    );
  }
}
