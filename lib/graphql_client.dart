import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

ValueNotifier<GraphQLClient> graphQLClient() {
  final httpLink = HttpLink(
    'http://127.0.0.1:8000/',
  );

  final authLink = AuthLink(
    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );

  final link = authLink.concat(httpLink);

  return ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(
        store: HiveStore(),
        partialDataPolicy: PartialDataCachePolicy.accept,
        dataIdFromObject: (object) {
          if (object['id'] != null) {}
          return null;
        },
      ),
    ),
  );
}
