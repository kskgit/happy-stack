import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'graphql_client.g.dart';
@riverpod
GraphQLClient graphQLClient(Ref ref) {
  final httpLink = HttpLink(
    'https://api.github.com/graphql',
  );

  final authLink = AuthLink(
    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );

  final link = authLink.concat(httpLink);

  return GraphQLClient(
    link: link,
    cache: GraphQLCache(store: HiveStore()),
  );
}
