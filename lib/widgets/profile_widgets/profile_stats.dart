import 'package:flutter/material.dart';
import 'package:news_app/models/author.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key, required this.author});
  final Author author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 315,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xff19202D),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        author.followers,
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 38,
                    width: 1,
                    decoration: BoxDecoration(
                      color: Color(0xffc1d4f9),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        author.posts,
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Posts',
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 38,
                    width: 1,
                    decoration: BoxDecoration(
                      color: Color(0xffc1d4f9),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        author.following,
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
