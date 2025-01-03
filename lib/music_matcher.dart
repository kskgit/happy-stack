import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/graphql/playlist_queries.graphql.dart';
import 'package:flutter_tutorial/graphql_client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box<String> box;

// 検索トリガー用のProviderを追加
final searchTriggerProvider = StateProvider<int>((ref) => 0);

void main() async {
  await initHiveForFlutter();

  runApp(
    ProviderScope(
      child: GraphQLProvider(
        client: graphQLClient(),
        child: const MusicMatcherApp(),
      ),
    ),
  );
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

class SearchBox extends ConsumerWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            onPressed: () {
              // 検索トリガーの値を更新
              ref.read(searchTriggerProvider.notifier).state++;
            },
          ),
        ],
      ),
    );
  }
}

class PlaylistSection extends ConsumerWidget {
  const PlaylistSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(searchTriggerProvider);

    return Container(
      color: Colors.blue[800],
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Query(
        options: QueryOptions(
          document: documentNodeQueryGetFeaturedPlaylists,
          fetchPolicy: FetchPolicy.networkOnly,
        ),
        builder: (
          QueryResult result, {
          VoidCallback? refetch,
          FetchMore? fetchMore,
        }) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.white),
            );
          }

          // 型安全な方法でデータにアクセス
          final queryResult = Query$GetFeaturedPlaylists.fromJson(result.data!);
          final playlists = queryResult.featuredPlaylists
              .map(
                (playlist) => PlaylistCard(
                  title: playlist.name,
                  description: playlist.description ?? '',
                ),
              )
              .toList();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'プレイリスト',
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
                children: playlists,
              ),
            ],
          );
        },
      ),
    );
  }
}

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    required this.title,
    required this.description,
    super.key,
  });
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
