import 'package:news_app/models/author.dart';

class News {
  final String headline;
  final List<String> newsImages;
  final Author author;
  final String monthDayPosted;
  final String datePosted;
  final String readLength;
  final String description;
  final String timePosted;
  final String category;

  News(
      {required this.headline,
      required this.newsImages,
      required this.author,
      required this.monthDayPosted,
      required this.datePosted,
      required this.readLength,
      required this.description,
      required this.timePosted,
      required this.category});
}

var NewsList = [
  authorList[0].newsArticles[0],
  authorList[1].newsArticles[0],
  authorList[2].newsArticles[0],
  authorList[3].newsArticles[0],
];
