// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const MaterialApp(
        title: 'Mobile News App',
        home: Scaffold(backgroundColor: Color(0xffFCFCFC), body: HomePage()),
      ),
    );
  }
}
