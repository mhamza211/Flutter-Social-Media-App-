import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
