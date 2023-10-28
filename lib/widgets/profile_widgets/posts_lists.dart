// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/models/author.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key, required this.author});
  final Author author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        height: 215,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: author.newsArticles.length,
          itemBuilder: (context, index) {
            final newsArticle = author.newsArticles[index];
            return Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          newsArticle.newsImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'News: ' + newsArticle.category,
                          style: TextStyle(
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.normal,
                            fontSize: 10.0,
                            color: const Color(0xff9397A0),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          newsArticle.headline,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,
                            color: const Color(0xff19202D),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/calendar_icon.svg',
                                      height: 17.33,
                                      width: 16.17,
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      newsArticle.datePosted,
                                      style: TextStyle(
                                        fontFamily: 'Gellix',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.0,
                                        color: const Color(0xff9397A0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/time_icon.svg',
                                      height: 17.33,
                                      width: 16.17,
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      newsArticle.timePosted,
                                      style: TextStyle(
                                        fontFamily: 'Gellix',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.0,
                                        color: const Color(0xff9397A0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
