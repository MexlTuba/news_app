class News {
  final String headline;
  final String newsImage;
  final String author;
  final String authorImage;
  final String datePosted;
  final String readLength;
  final String description;
  final String timePosted;

  News({
    required this.headline,
    required this.newsImage,
    required this.author,
    required this.authorImage,
    required this.datePosted,
    required this.readLength,
    required this.description,
    required this.timePosted,
  });
}

var NewsList = [
  News(
      headline: 'Quantum Leap: Breakthrough in Quantum Computing',
      newsImage: 'assets/images/quantum.png',
      author: 'Dr. Alan Turing',
      authorImage: 'assets/images/drAlan.png',
      datePosted: 'October 26, 2023',
      readLength: '5 min read',
      description:
          'A team of researchers led by Dr. Alan Turing has achieved a significant breakthrough in quantum computing, accelerating the journey towards creating unhackable networks. The newly developed quantum algorithm can solve complex problems 100 times faster than traditional computers, marking a milestone in cryptography and network security.',
      timePosted: '9:32 pm'),
  News(
      headline:
          'Harmony of Healing: New Research Illuminates the Therapeutic Benefits of Music',
      newsImage: 'assets/images/music.png',
      author: 'Melody Harmon',
      authorImage: 'assets/images/melodyHarmon.png',
      datePosted: 'November 3, 2023',
      readLength: '4 min read',
      description:
          'Recent studies led by music therapist Melody Harmon reveal that music therapy can significantly alleviate symptoms of anxiety and depression. The findings open new doors for integrating music therapy into holistic mental health treatment plans.',
      timePosted: '11:32 pm'),
  News(
      headline:
          'Trend Toward Sustainability: Fashion Industry Embraces Eco-Friendly Practices',
      newsImage: 'assets/images/sustainable.png',
      author: 'Fabio Chic',
      authorImage: 'assets/images/fabio.png',
      datePosted: 'October 30, 2023',
      readLength: '6 min read',
      description:
          'As the call for sustainability grows louder, the fashion industry is pivoting towards eco-friendly practices. Designer Fabio Chic unveils a new collection made entirely from recycled materials, setting a trend for sustainable fashion.',
      timePosted: '7:05 am'),
  News(
      headline:
          'Beyond the Blue: First Commercial Spaceflight Successfully Lands on the Moon',
      newsImage: 'assets/images/moonLand.png',
      author: 'Neil Armstrong Jr.',
      authorImage: 'assets/images/armstrong.png',
      datePosted: 'November 5, 2023',
      readLength: '7 min read',
      description:
          'In a historic moment, the first commercial spaceflight successfully lands on the Moon, marking a giant leap for space tourism. Led by pilot Neil Armstrong Jr., the mission opens a new chapter in human space exploration and travel.',
      timePosted: '2:32 am'),
];
