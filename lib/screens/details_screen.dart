// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/models/news.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key, required this.news});
  final News news;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> _currentPageNotifier = ValueNotifier<int>(0);
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        //Background
        Container(
          height: screenSize.height,
          width: screenSize.width,
          color: Colors.grey,
        ),
        Stack(
          children: [
            // Top Half
            Container(
              height: 400,
              child: PageView(
                onPageChanged: (int index) {
                  _currentPageNotifier.value = index;
                },
                children: news.newsImages.map((imagePath) {
                  return Image.asset(imagePath, fit: BoxFit.cover);
                }).toList(),
              ),
            ),
            // Top Row Icons
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/svg/arrow_back_icon.svg',
                      ))),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/svg/bookmark_white_icon.svg',
                      ))),
                ],
              ),
            ),
            // Carousel Indicator
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: ValueListenableBuilder<int>(
                valueListenable: _currentPageNotifier,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: SvgPicture.asset(
                          value == index
                              ? 'assets/svg/carousel_indicator_enabled.svg'
                              : 'assets/svg/carousel_indicator_disabled.svg',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        // Bottom Half
        Positioned(
          top: 360,
          left: 0,
          right: 0,
          child: Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          news.headline,
                          style: TextStyle(
                              fontFamily: 'Gellix',
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 315,
                          height: 54,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0XFFEEEEEE)),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 26.0,
                                  height: 26.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xff25282B),
                                    image: DecorationImage(
                                      image:
                                          AssetImage(news.author.authorImage),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  news.author.fname + ' ' + news.author.lname,
                                  style: TextStyle(
                                      fontFamily: 'Gellix',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF9397A0)),
                                ),
                                Text(
                                  news.monthDayPosted,
                                  style: TextStyle(
                                      fontFamily: 'Gellix',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF9397A0)),
                                ),
                                SvgPicture.asset(
                                  'assets/svg/carousel_indicator_disabled.svg',
                                  color: Color(0xFF9397A0),
                                  height: 5,
                                  width: 5,
                                ),
                                Text(
                                  news.readLength,
                                  style: TextStyle(
                                      fontFamily: 'Gellix',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF9397A0)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 21),
                  Text(
                    news.description,
                    style: TextStyle(
                        fontFamily: 'Gellix',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF19202D)),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
