import 'package:flutter/material.dart';
import 'package:news_app/models/author.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/models/populate_articles.dart';
import 'package:news_app/screens/author_screen.dart';
import 'package:news_app/screens/details_screen.dart';
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
    populateArticles();
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile News App',
        home: Scaffold(
          bottomNavigationBar: BottomNavBar(selectedIndex: selectedIndex),
          backgroundColor: const Color(0xffFCFCFC),
          body: SingleChildScrollView(
              child: HomePage(selectedIndex: selectedIndex)),
        ),
      ),
    );
  }
}
