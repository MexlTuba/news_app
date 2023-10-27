import 'package:news_app/models/author.dart';
import 'package:news_app/models/news.dart';

void populateArticles() {
  var newsArticlesAlan = [
    News(
        headline: 'Quantum Leap: Breakthrough in Quantum Computing',
        newsImage: 'assets/images/quantum.png',
        author: authorList[0],
        datePosted: 'October 26, 2023',
        readLength: '5 min read',
        description:
            'A team of researchers led by Dr. Alan Turing has achieved a significant breakthrough in quantum computing, accelerating the journey towards creating unhackable networks. The newly developed quantum algorithm can solve complex problems 100 times faster than traditional computers, marking a milestone in cryptography and network security.',
        timePosted: '9:32 pm',
        category: 'Science'),
    News(
        headline: 'The Turing Test: Redefining Machine Intelligence',
        newsImage: 'assets/images/turing_test.png',
        author: authorList[0],
        datePosted: 'August 14, 2023',
        readLength: '4 min read',
        description:
            'Dr. Alan Turing proposes a groundbreaking test to measure machine intelligence, fundamentally changing our understanding of AI and its potential to think like humans. This marks a significant step towards the development of sentient artificial intelligence.',
        timePosted: '3:45 pm',
        category: 'Science'),
    News(
        headline: 'Enigma Decoded: The Power of Computational Logic',
        newsImage: 'assets/images/enigma.png',
        author: authorList[0],
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
        newsImage: 'assets/images/music.png',
        author: authorList[1],
        datePosted: 'November 3, 2023',
        readLength: '4 min read',
        description:
            'Recent studies led by music therapist Melody Harmon reveal that music therapy can significantly alleviate symptoms of anxiety and depression. The findings open new doors for integrating music therapy into holistic mental health treatment plans.',
        timePosted: '11:32 pm',
        category: 'Music'),
    News(
        headline: 'Tuning into Wellness: The Resonance of Sound Healing',
        newsImage: 'assets/images/sound_healing.png',
        author: authorList[1],
        datePosted: 'September 21, 2023',
        readLength: '5 min read',
        description:
            'Melody Harmon delves into the ancient practice of sound healing, exploring its potential in promoting mental, emotional, and physical well-being. Harmon discusses the science behind sound frequencies and their impact on the human body, providing insights into how sound healing can be integrated into modern wellness practices.',
        timePosted: '8:15 am',
        category: 'Health'),
    News(
        headline:
            'Melodies of Mindfulness: Incorporating Music into Daily Meditation',
        newsImage: 'assets/images/mindfulness.png',
        author: authorList[1],
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
        newsImage: 'assets/images/sustainable.png',
        author: authorList[2],
        datePosted: 'October 30, 2023',
        readLength: '6 min read',
        description:
            'As the call for sustainability grows louder, the fashion industry is pivoting towards eco-friendly practices. Designer Fabio Chic unveils a new collection made entirely from recycled materials, setting a trend for sustainable fashion.',
        timePosted: '7:05 am',
        category: 'Fashion'),
    News(
        headline: 'Fabio Chic: The Maestro of Upcycled Fashion',
        newsImage: 'assets/images/upcycled_fashion.png',
        author: authorList[2],
        datePosted: 'September 18, 2023',
        readLength: '5 min read',
        description:
            'Fabio Chic takes upcycling to a new level with his latest fashion line. By repurposing discarded materials, Chic crafts unique, high-end pieces that challenge the norms of traditional fashion while promoting sustainability.',
        timePosted: '2:00 pm',
        category: 'Fashion'),
    News(
        headline:
            'Fashion Forward: Fabio Chic’s Vision for a Sustainable Industry',
        newsImage: 'assets/images/fashion_forward.png',
        author: authorList[2],
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
        newsImage: 'assets/images/moonLand.png',
        author: authorList[3],
        datePosted: 'November 5, 2023',
        readLength: '7 min read',
        description:
            'In a historic moment, the first commercial spaceflight successfully lands on the Moon, marking a giant leap for space tourism. Led by pilot Neil Armstrong Jr., the mission opens a new chapter in human space exploration and travel.',
        timePosted: '2:32 am',
        category: 'Science'),
    News(
        headline: 'Following Father’s Footsteps: Armstrong on Lunar Legacy',
        newsImage: 'assets/images/lunar_legacy.png',
        author: authorList[3],
        datePosted: 'September 1, 2023',
        readLength: '5 min read',
        description:
            'Neil Armstrong Jr. reflects on his father’s legendary lunar landing, his own journey to the moon, and the future of space exploration. The Armstrong legacy continues to inspire a new generation of astronauts and space enthusiasts.',
        timePosted: '10:15 am',
        category: 'Space Exploration'),
    News(
        headline: 'The New Frontier: Armstrong Advocates for Mars Colonization',
        newsImage: 'assets/images/mars_colonization.png',
        author: authorList[3],
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
