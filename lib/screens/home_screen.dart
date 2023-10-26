// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/widgets/hashtag_filters.dart';
import 'package:news_app/widgets/news_card.dart';
import 'package:news_app/widgets/profile_bar.dart';
import 'package:news_app/widgets/search_bar.dart';
import 'package:news_app/widgets/shorts_card.dart';
import 'package:news_app/widgets/shorts_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileBar(),
        SearchBarWidget(onTextChanged: (value) => ''),
        HashtagFilters(),
        NewsCard(),
        ShortsHeader(),
        ShortsCard()
      ],
    );
  }
}
