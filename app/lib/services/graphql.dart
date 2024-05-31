import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/graphql/links/custom_auth_link.dart';
import 'package:jhanas/config.dart';
import 'package:jhanas/services/auth/auth_service.dart';
import 'package:normalize/normalize.dart';

// Don't send token for these operations
const _skipTokenOperationsList = ['RefreshToken'];

GraphQLClient initGraphQLClient() {
  var link = Link.from([
    const ErrorLink(onException: handleException),
    CustomAuthLink(getToken: getToken, shouldSkipToken: shouldSkipToken),
    HttpLink(graphqlEndpoint),
  ]);

  if (graphqlSubscriptionEndpoint != null) {
    final WebSocketLink websocketLink = WebSocketLink(
      graphqlSubscriptionEndpoint,
    );

    link = Link.split(
      (request) => request.isSubscription,
      websocketLink,
      link,
    );
  }

  return GraphQLClient(
    cache: GraphQLCache(
      store: HiveStore(),
      typePolicies: {
        'LessonTechnique': TypePolicy(
          keyFields: {
            'lessonId': true,
            'techniqueId': true,
          },
        ),
        'UnitTechnique': TypePolicy(
          keyFields: {
            'unitId': true,
            'techniqueId': true,
          },
        ),
      },
    ),
    link: link,
  );
}

FutureOr<bool> shouldSkipToken(Request request) async {
  final operationName = request.operation.operationName;
  if (operationName == null) {
    return false;
  }
  if (_skipTokenOperationsList.contains(operationName)) {
    return true;
  }
  return false;
}

FutureOr<String?> getToken() async {
  final authService = GetIt.instance<AuthService>();
  final token = await authService.getAuthToken();
  return token != null ? 'Bearer $token' : null;
}

// We'll want to handle [LinkException]s
Stream<Response> handleException(
  Request request,
  NextLink forward,
  LinkException exception,
) async* {
  // If the exception is [AuthException]
  if (exception is ServerException && exception.statusCode == 401) {
    final authService = GetIt.instance<AuthService>();
    authService.signOut();

    return;
  }

  // Otherwise, we rethrow the previous exception
  throw exception;
}
