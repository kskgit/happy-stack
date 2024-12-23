import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'graphql_client.g.dart';
ValueNotifier<GraphQLClient> graphQLClient() {
  final httpLink = HttpLink(
    'localhost:8000',
  );

  final authLink = AuthLink(
    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );

  final link = authLink.concat(httpLink);

  return ValueNotifier(GraphQLClient(
    link: link,
    cache: GraphQLCache(store: HiveStore()),
  ),);
}
