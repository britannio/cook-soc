import 'package:ferry/ferry.dart';
import 'package:flutter/foundation.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_link/gql_link.dart';

Stream<Response> handleGraphQLException(
  Request request,
  NextLink forward,
  LinkException exception,
) async* {
  debugPrint(exception.toString());

  yield* forward(request);
}

Stream<Response> handleGraphQLError(
  Request request,
  NextLink forward,
  Response response,
) async* {
  debugPrint(response.toString());

  yield* forward(request);
}
