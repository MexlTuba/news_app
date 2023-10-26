import 'package:flutter/material.dart';

class ShortsHeader extends StatelessWidget {
  const ShortsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Short For You',
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
              color: const Color(0xff19202D),
            ),
          ),
          Text(
            'View all',
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w500,
              fontSize: 12.0,
              color: const Color(0xff5474FD),
            ),
          ),
        ],
      ),
    );
  }
}
