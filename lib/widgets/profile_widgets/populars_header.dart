import 'package:flutter/material.dart';
import 'package:news_app/models/author.dart';

class PopularsHeader extends StatelessWidget {
  const PopularsHeader({super.key, required this.author});
  final Author author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: Row(
        children: [
          Text(
            'Popular From ' + author.fname,
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
              color: const Color(0xff19202D),
            ),
          )
        ],
      ),
    );
  }
}
