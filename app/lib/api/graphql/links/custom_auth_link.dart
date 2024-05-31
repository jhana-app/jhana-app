import 'dart:async';
import 'package:graphql/client.dart';

import "package:gql_transform_link/gql_transform_link.dart";

typedef _RequestTransformer = FutureOr<Request> Function(Request request);

typedef OnException = FutureOr<String> Function(
  HttpLinkServerException exception,
);

// Based on the AuthLink class from the gql_transform_link package
// We added an option to skip getting token for some operations.
class CustomAuthLink extends _AsyncReqTransformLink {
  CustomAuthLink({
    required this.getToken,
    required this.shouldSkipToken,
    this.headerKey = 'Authorization',
  }) : super(requestTransformer: transform(headerKey, getToken, shouldSkipToken));

  /// Authentication callback. Note – must include prefixes, e.g. `'Bearer $token'`
  final FutureOr<String?> Function() getToken;

  /// Header key to set to the result of [getToken]
  final String headerKey;

  final FutureOr<bool> Function(Request) shouldSkipToken;

  static _RequestTransformer transform(
    String headerKey,
    FutureOr<String?> Function() getToken,
    FutureOr<bool> Function(Request) shouldSkipToken,
  ) =>
      (Request request) async {
        if (await shouldSkipToken(request)) {
          return request;
        }
        final token = await getToken();
        return request.updateContextEntry<HttpLinkHeaders>(
          (headers) => HttpLinkHeaders(
            headers: <String, String>{
              ...headers?.headers ?? <String, String>{},
              if (token != null) headerKey: token,
            },
          ),
        );
      };
}

/// Version of [TransformLink] that handles async transforms
class _AsyncReqTransformLink extends Link {
  final _RequestTransformer requestTransformer;

  _AsyncReqTransformLink({
    required this.requestTransformer,
  });

  @override
  Stream<Response> request(
    Request request, [
    NextLink? forward,
  ]) async* {
    final req = await requestTransformer(request);

    yield* forward!(req);
  }
}
