// author.dart

import 'package:news_app/models/news.dart';

class Author {
  final String authorImage;
  final String fname;
  final String lname;
  final String occupation;
  final String bio;
  final String followers;
  final String posts;
  final String following;
  List<News> newsArticles;

  Author({
    required this.authorImage,
    required this.fname,
    required this.lname,
    required this.occupation,
    required this.bio,
    required this.followers,
    required this.posts,
    required this.following,
    required this.newsArticles,
  });
}

var authorList = [
  Author(
    authorImage: 'assets/images/drAlan.png',
    fname: 'Dr. Alan',
    lname: 'Turing',
    occupation: 'Scientist',
    bio:
        '    Dr. Alan Turing, a pioneering scientist in the realm of quantum computing and artificial intelligence, has dedicated his life to pushing the boundaries of what machines can achieve. With numerous accolades under his belt, Dr. Turing\'s work has redefined the landscape of modern computing and cryptography, making him a revered figure in the scientific community',
    followers: '10.20k',
    posts: '11.12k',
    following: '32.15k',
    newsArticles: [],
  ),
  Author(
    authorImage: 'assets/images/melodyHarmon.png',
    fname: 'Melody',
    lname: 'Harmon',
    occupation: 'Musician',
    bio:
        '    Melody Harmon, a certified music therapist and passionate advocate for the healing power of music, has spent over a decade exploring the therapeutic benefits of musical engagement. Through her extensive research and practice, Melody has touched countless lives, helping individuals find solace and healing through musical expression.',
    followers: '55.21k',
    posts: '5.12k',
    following: '16.55k',
    newsArticles: [],
  ),
  Author(
    authorImage: 'assets/images/fabio.png',
    fname: 'Fabio',
    lname: 'Chic',
    occupation: 'Fashionista',
    bio:
        '    Fabio Chic is not just a fashion designer; he\'s a visionary committed to sustainable fashion. With an eye for elegance and a heart for the environment, Fabio has revolutionized the fashion industry with his eco-friendly practices. His innovative designs, made entirely from recycled materials, set a high standard for sustainable fashion, proving that style and sustainability can coexist',
    followers: '98.88k',
    posts: '76.77k',
    following: '2.32k',
    newsArticles: [],
  ),
  Author(
    authorImage: 'assets/images/armstrong.png',
    fname: 'Neil',
    lname: 'Armstrong Jr.',
    occupation: 'Astronaut',
    bio:
        '    Following in the legendary footsteps of his father, Neil Armstrong Jr. has carved his own path in the annals of space exploration. As a seasoned astronaut and an advocate for space tourism, Armstrong Jr. is at the forefront of ushering in a new era of lunar exploration and beyond. His adventurous spirit and unwavering dedication continue to inspire a new generation of space explorers.',
    followers: '88.11k',
    posts: '3.92k',
    following: '4.40k',
    newsArticles: [],
  ),
];
