// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:news_app/models/author.dart';
import 'package:news_app/widgets/profile_widgets/popular_list.dart';
import 'package:news_app/widgets/profile_widgets/populars_header.dart';
import 'package:news_app/widgets/profile_widgets/posts_header.dart';
import 'package:news_app/widgets/profile_widgets/bio.dart';
import 'package:news_app/widgets/profile_widgets/posts_lists.dart';
import 'package:news_app/widgets/profile_widgets/profile_header.dart';
import 'package:news_app/widgets/profile_widgets/profile_stats.dart';

class AuthorPage extends StatelessWidget {
  const AuthorPage({super.key, required this.author});
  final Author author;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileHeader(
            author: author,
          ),
          Bio(author: author),
          ProfileStats(author: author),
          PostsHeader(
            author: author,
          ),
          PostsList(author: author),
          PopularsHeader(author: author),
          PopularList(author: author),
        ],
      ),
    );
  }
}
