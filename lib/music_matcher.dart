import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(const MusicMatcherApp());
}

class MusicMatcherApp extends StatelessWidget {
  const MusicMatcherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MusicMatcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MusicMatcherHomePage(),
    );
  }
}

class MusicMatcherHomePage extends StatelessWidget {
  const MusicMatcherHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            PlaylistSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.lightBlue[50],
      child: const Column(
        children: [
          Text(
            'MusicMatcher',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Music for every moment',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 20),
          SearchBox(),
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Cooking a big family dinner',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class PlaylistSection extends StatelessWidget {
  const PlaylistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[800],
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Listen to...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: const [
              PlaylistCard(
                title: 'Sweet Beats & Eats',
                description: 'Tooth-achingly sweet beats for your sweet eats',
              ),
              PlaylistCard(
                title: 'Grilling Tunes For You',
                description: 'Set the barbecue mood. Upbeat and laid-back tracks...',
              ),
              PlaylistCard(
                title: 'Sizzle and Sounds',
                description: 'This playlist blends rhythmic beats and melodic harmonies...',
              ),
              PlaylistCard(
                title: 'Zesty Culinary Harmony',
                description: 'Infuse flavor into your kitchen. This playlist merges zesty...',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PlaylistCard extends StatelessWidget {

  const PlaylistCard({required this.title, required this.description, super.key});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.play_circle_fill, size: 40, color: Colors.blue[800]),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
