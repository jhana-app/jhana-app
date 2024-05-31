import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

/// Refetch all GraphQL queries with the given operation names.
void refetch(
  GraphQLClient client,
  List<String> operationNames,
) {
  for (final query in client.queryManager.queries.values) {
    if (operationNames.contains(query.options.operationName)) {
      query.refetch().onError<Exception>((error, stackTrace) {
        if (error.toString() != 'Exception: Query is not refetch safe') {
          Sentry.captureException(error, stackTrace: stackTrace);
        }
        return null;
      });
    }
  }
}
