// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:news_app/widgets/profile_widgets/bio.dart';
import 'package:news_app/widgets/profile_widgets/profile_header.dart';
import 'package:news_app/widgets/profile_widgets/profile_stats.dart';

class AuthorPage extends StatelessWidget {
  const AuthorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileHeader(),
        Bio(),
        ProfileStats(),
      ],
    );
  }
}
