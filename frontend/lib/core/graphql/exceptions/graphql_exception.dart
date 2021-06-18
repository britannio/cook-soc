import 'dart:convert';

import 'package:ferry/ferry.dart';
import 'package:gql_exec/gql_exec.dart';

class GraphQLException implements Exception {
  const GraphQLException._(this.errors, this.linkException);

  factory GraphQLException.fromResponse(OperationResponse response) {
    return GraphQLException._(response.graphqlErrors, response.linkException);
  }

  final List<GraphQLError>? errors;
  final LinkException? linkException;

  @override
  String toString() {
    final data = {
      'linkException': linkException?.originalException.toString(),
      'errors': errors?.map((e) => e.toString()).toString(),
    };
    return jsonEncode(data);
  }
}
