// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/widgets/home_widgets/hashtag_filters.dart';
import 'package:news_app/widgets/home_widgets/news_card.dart';
import 'package:news_app/widgets/home_widgets/profile_bar.dart';
import 'package:news_app/widgets/home_widgets/search_bar.dart';
import 'package:news_app/widgets/home_widgets/shorts_card.dart';
import 'package:news_app/widgets/home_widgets/shorts_header.dart';

class HomePage extends StatelessWidget {
  final ValueNotifier<int> selectedIndex;
  const HomePage({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileBar(),
        SearchBarWidget(onTextChanged: (value) => ''),
        HashtagFilters(),
        NewsCard(selectedIndex: selectedIndex),
        ShortsHeader(),
        ShortsCard()
      ],
    );
  }
}
