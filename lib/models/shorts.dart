class Shorts {
  final String headline;
  final String shortsImage;
  final String viewCount;

  Shorts(
      {required this.headline,
      required this.shortsImage,
      required this.viewCount});
}

var shortsList = [
  Shorts(
    headline: 'Top Trending Islands in 2022',
    shortsImage: 'assets/images/trending.png',
    viewCount: '40,999',
  ),
  Shorts(
    headline: 'China Forex Trading',
    shortsImage: 'assets/images/chinese.png',
    viewCount: '67,154',
  ),
  Shorts(
    headline: 'Styling Tips for Women',
    shortsImage: 'assets/images/stylish.png',
    viewCount: '31,778',
  )
];
