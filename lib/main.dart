import 'package:flutter/material.dart';
import 'package:news_app/screens/author_screen.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/widgets/bottom_navbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

    return SafeArea(
      child: MaterialApp(
        title: 'Mobile News App',
        home: Scaffold(
          bottomNavigationBar: BottomNavBar(selectedIndex: selectedIndex),
          backgroundColor: const Color(0xffFCFCFC),
          body: SingleChildScrollView(child: AuthorPage()),
        ),
      ),
    );
  }
}
