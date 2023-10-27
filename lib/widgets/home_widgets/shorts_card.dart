// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/models/shorts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShortsCard extends StatelessWidget {
  const ShortsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: 88,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: shortsList.length,
          itemBuilder: (context, index) {
            Shorts shorts = shortsList[index];
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 208,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 1),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    shorts.shortsImage,
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SvgPicture.asset('assets/svg/play_icon.svg',
                                  width: 20, height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 2),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Flexible(
                              child: Text(
                                shorts.headline,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Gellix',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                  color: const Color(0xff19202D),
                                ),
                              ),
                            ),
                            SizedBox(height: 9),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/eye_icon.svg',
                                  height: 12,
                                  width: 15,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  shorts.viewCount,
                                  style: TextStyle(
                                    fontFamily: 'Gellix',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                    color: const Color(0xff9397A0),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
