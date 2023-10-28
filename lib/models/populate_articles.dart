import 'package:news_app/models/author.dart';
import 'package:news_app/models/news.dart';

void populateArticles() {
  var newsArticlesAlan = [
    News(
        headline: 'Quantum Leap: Breakthrough in Quantum Computing',
        newsImages: [
          'assets/images/quantum.png',
          'assets/images/quantum2.png',
          'assets/images/quantum3.png'
        ],
        author: authorList[0],
        monthDayPosted: 'October 26',
        datePosted: 'October 26, 2023',
        readLength: '5 min read',
        description:
            'A team of researchers led by Dr. Alan Turing has achieved a significant breakthrough in quantum computing, accelerating the journey towards creating unhackable networks. The newly developed quantum algorithm can solve complex problems 100 times faster than traditional computers, marking a milestone in cryptography and network security.A team of researchers led by Dr. Alan Turing has achieved a significant breakthrough in quantum computing, accelerating the journey towards creating unhackable networks. The newly developed quantum algorithm can solve complex problems 100 times faster than traditional computers, marking a milestone in cryptography and network security.A team of researchers led by Dr. Alan Turing has achieved a significant breakthrough in quantum computing, accelerating the journey towards creating unhackable networks. The newly developed quantum algorithm can solve complex problems 100 times faster than traditional computers, marking a milestone in cryptography and network security.',
        timePosted: '9:32 pm',
        category: 'Science'),
    News(
        headline: 'The Turing Test: Redefining Machine Intelligence',
        newsImages: [
          'assets/images/turing_test.png',
          'assets/images/turing_test2.png',
          'assets/images/turing_test3.png'
        ],
        author: authorList[0],
        monthDayPosted: 'August 14',
        datePosted: 'August 14, 2023',
        readLength: '4 min read',
        description:
            'Dr. Alan Turing proposes a groundbreaking test to measure machine intelligence, fundamentally changing our understanding of AI and its potential to think like humans. This marks a significant step towards the development of sentient artificial intelligence.',
        timePosted: '3:45 pm',
        category: 'Science'),
    News(
        headline: 'Enigma Decoded: The Power of Computational Logic',
        newsImages: [
          'assets/images/enigma.png',
          'assets/images/enigma2.png',
          'assets/images/enigma3.png'
        ],
        author: authorList[0],
        monthDayPosted: 'July 9',
        datePosted: 'July 9, 2023',
        readLength: '6 min read',
        description:
            'The recent decoding of the Enigma cipher by Dr. Alan Turing and his team has showcased the incredible power of computational logic. This achievement not only played a crucial role in the information warfare but also laid the foundation for modern cryptography.',
        timePosted: '11:15 am',
        category: 'Science')
  ];
  var newsArticlesMelody = [
    News(
        headline:
            'Harmony of Healing: New Research Illuminates the Therapeutic Benefits of Music',
        newsImages: [
          'assets/images/music.png',
          'assets/images/music2.png',
          'assets/images/music3.png'
        ],
        author: authorList[1],
        monthDayPosted: 'November 3',
        datePosted: 'November 3, 2023',
        readLength: '4 min read',
        description:
            'Recent studies led by music therapist Melody Harmon reveal that music therapy can significantly alleviate symptoms of anxiety and depression. The findings open new doors for integrating music therapy into holistic mental health treatment plans.',
        timePosted: '11:32 pm',
        category: 'Music'),
    News(
        headline: 'Tuning into Wellness: The Resonance of Sound Healing',
        newsImages: [
          'assets/images/sound_healing.png',
          'assets/images/sound_healing2.png',
          'assets/images/sound_healing3.png'
        ],
        author: authorList[1],
        monthDayPosted: 'September 21',
        datePosted: 'September 21, 2023',
        readLength: '5 min read',
        description:
            'Melody Harmon delves into the ancient practice of sound healing, exploring its potential in promoting mental, emotional, and physical well-being. Harmon discusses the science behind sound frequencies and their impact on the human body, providing insights into how sound healing can be integrated into modern wellness practices.',
        timePosted: '8:15 am',
        category: 'Health'),
    News(
        headline:
            'Melodies of Mindfulness: Incorporating Music into Daily Meditation',
        newsImages: [
          'assets/images/mindfulness.png',
          'assets/images/mindfulness2.png',
          'assets/images/mindfulness3.png'
        ],
        author: authorList[1],
        monthDayPosted: 'August 10',
        datePosted: 'August 10, 2023',
        readLength: '6 min read',
        description:
            'In this insightful piece, Melody Harmon shares her experiences on blending music with mindfulness meditation. She offers guidance on selecting the right kind of music and creating a conducive environment for a centered and tranquil meditation experience.',
        timePosted: '7:00 am',
        category: 'Wellness')
  ];
  var newsArticlesFabio = [
    News(
        headline:
            'Trend Toward Sustainability: Fashion Industry Embraces Eco-Friendly Practices',
        newsImages: [
          'assets/images/sustainable.png',
          'assets/images/sustainable2.png',
          'assets/images/sustainable3.png'
        ],
        author: authorList[2],
        monthDayPosted: 'October 30',
        datePosted: 'October 30, 2023',
        readLength: '6 min read',
        description:
            'As the call for sustainability grows louder, the fashion industry is pivoting towards eco-friendly practices. Designer Fabio Chic unveils a new collection made entirely from recycled materials, setting a trend for sustainable fashion.',
        timePosted: '7:05 am',
        category: 'Fashion'),
    News(
        headline: 'Fabio Chic: The Maestro of Upcycled Fashion',
        newsImages: [
          'assets/images/upcycled_fashion.png',
          'assets/images/upcycled_fashion2.png',
          'assets/images/upcycled_fashion3.png'
        ],
        author: authorList[2],
        monthDayPosted: 'September 18',
        datePosted: 'September 18, 2023',
        readLength: '5 min read',
        description:
            'Fabio Chic takes upcycling to a new level with his latest fashion line. By repurposing discarded materials, Chic crafts unique, high-end pieces that challenge the norms of traditional fashion while promoting sustainability.',
        timePosted: '2:00 pm',
        category: 'Fashion'),
    News(
        headline:
            'Fashion Forward: Fabio Chic’s Vision for a Sustainable Industry',
        newsImages: [
          'assets/images/fashion_forward.png',
          'assets/images/fashion_forward2.png',
          'assets/images/fashion_forward3.png'
        ],
        author: authorList[2],
        monthDayPosted: 'August 22',
        datePosted: 'August 22, 2023',
        readLength: '7 min read',
        description:
            'In an in-depth interview, Fabio Chic shares his vision for a more sustainable fashion industry. He discusses the challenges and opportunities of eco-friendly fashion, and how designers can play a pivotal role in driving the industry towards a greener future.',
        timePosted: '9:30 am',
        category: 'Fashion')
  ];
  var newsArticlesArmstrong = [
    News(
        headline:
            'Beyond the Blue: First Commercial Spaceflight Successfully Lands on the Moon',
        newsImages: [
          'assets/images/moonLand.png',
          'assets/images/moonLand2.png',
          'assets/images/moonLand3.png'
        ],
        author: authorList[3],
        monthDayPosted: 'November 5',
        datePosted: 'November 5, 2023',
        readLength: '7 min read',
        description:
            'In a historic moment, the first commercial spaceflight successfully lands on the Moon, marking a giant leap for space tourism. Led by pilot Neil Armstrong Jr., the mission opens a new chapter in human space exploration and travel.',
        timePosted: '2:32 am',
        category: 'Science'),
    News(
        headline: 'Following Father’s Footsteps: Armstrong on Lunar Legacy',
        newsImages: [
          'assets/images/lunar_legacy.png',
          'assets/images/lunar_legacy2.png',
          'assets/images/lunar_legacy3.png'
        ],
        author: authorList[3],
        monthDayPosted: 'September 1',
        datePosted: 'September 1, 2023',
        readLength: '5 min read',
        description:
            'Neil Armstrong Jr. reflects on his father’s legendary lunar landing, his own journey to the moon, and the future of space exploration. The Armstrong legacy continues to inspire a new generation of astronauts and space enthusiasts.',
        timePosted: '10:15 am',
        category: 'Space Exploration'),
    News(
        headline: 'The New Frontier: Armstrong Advocates for Mars Colonization',
        newsImages: [
          'assets/images/mars_colonization.png',
          'assets/images/mars_colonization2.png',
          'assets/images/mars_colonization3.png'
        ],
        author: authorList[3],
        monthDayPosted: 'June 12',
        datePosted: 'June 12, 2023',
        readLength: '6 min read',
        description:
            'As humanity gazes towards the Red Planet, Neil Armstrong Jr. voices his support for Mars colonization. He discusses the challenges, the excitement surrounding the new frontier, and the potential to establish a human settlement beyond Earth.',
        timePosted: '4:05 pm',
        category: 'Space Exploration')
  ];

  authorList[0].newsArticles = newsArticlesAlan;
  authorList[1].newsArticles = newsArticlesMelody;
  authorList[2].newsArticles = newsArticlesFabio;
  authorList[3].newsArticles = newsArticlesArmstrong;
}
