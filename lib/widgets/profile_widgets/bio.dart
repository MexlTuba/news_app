// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/models/author.dart';

class Bio extends StatelessWidget {
  const Bio({super.key, required this.author});
  final Author author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 33),
      child: Row(
        children: [
          Flexible(
            child: Text(
              author.bio,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w500,
                fontSize: 12.0,
                color: const Color(0xff9397A0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
