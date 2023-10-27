// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 51, 30, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xff5474FD),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "FNAME LNAME",
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: const Color(0xff19202D),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'OCCUPATION',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                  color: const Color(0xff19202D),
                ),
              ),
            ],
          ),
          Container(
            width: 109,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xff5474FD),
            ),
            child: Center(
                child: Text(
              'Following',
              style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w500,
                fontSize: 12.0,
                color: const Color(0xffFFFFFF),
              ),
            )),
          )
        ],
      ),
    );
  }
}
