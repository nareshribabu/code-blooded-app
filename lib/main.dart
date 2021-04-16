import 'package:flutter/material.dart';
import 'HomePage.dart';

// Main app

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFFFFFF)),
      title: 'code-blooded.com',
      home: HomePage(),
    );
  }
}
