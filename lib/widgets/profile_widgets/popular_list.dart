import 'package:flutter/material.dart';
import 'package:news_app/models/author.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screens/author_screen.dart';
import 'package:news_app/screens/details_screen.dart';

class PopularList extends StatelessWidget {
  const PopularList(
      {super.key, required this.author, required this.selectedIndex});
  final Author author;
  final ValueNotifier<int> selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30),
      child: SizedBox(
        height: 304,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: author.newsArticles.length,
          itemBuilder: (context, index) {
            final newsArticle = author.newsArticles[index];
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 255,
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
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NewsDetails(
                              news: newsArticle,
                              selectedIndex: selectedIndex,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: Container(
                          height: 164,
                          width: 255,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(newsArticle.newsImages[0]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NewsDetails(
                              news: newsArticle,
                              selectedIndex: selectedIndex,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Text(
                          newsArticle.headline,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                            color: const Color(0xff19202D),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AuthorPage(
                              author: author,
                              selectedIndex: selectedIndex,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                        child: Row(
                          children: [
                            Container(
                              width: 48.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xff25282B),
                                image: DecorationImage(
                                  image: AssetImage(
                                      newsArticle.author.authorImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      newsArticle.author.fname +
                                          ' ' +
                                          newsArticle.author.lname,
                                      style: TextStyle(
                                        fontFamily: 'Gellix',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                        color: const Color(0xff19202D),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      newsArticle.datePosted,
                                      style: TextStyle(
                                        fontFamily: 'Gellix',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12.0,
                                        color: const Color(0xff9397A0),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 37,
                                    width: 37,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFF5F4),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        'assets/svg/share_icon.svg',
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
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
