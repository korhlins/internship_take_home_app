import 'package:flutter/material.dart';
import 'package:internship_take_home_app/view/screens/home_screen.dart';

void main() {
  runApp(InternshipTestApp());
}

class InternshipTestApp extends StatelessWidget {
  const InternshipTestApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
