// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:news_app/models/author.dart';

class PostsHeader extends StatelessWidget {
  const PostsHeader({super.key, required this.author});
  final Author author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            author.fname + '\'s ' + 'Posts',
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
              color: const Color(0xff19202D),
            ),
          ),
          Text(
            'View All',
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w500,
              fontSize: 12.0,
              color: const Color(0xff5474FD),
            ),
          )
        ],
      ),
    );
  }
}
