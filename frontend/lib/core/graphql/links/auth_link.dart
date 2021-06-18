import 'dart:async';

import 'package:cooksoc/dependency_injection.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Mostly taken from
// https://github.com/gql-dart/gql/blob/master/examples/gql_example_http_auth_link/lib/http_auth_link.dart
class AuthLink extends Link {
  AuthLink({this.headerKey = 'Authorization'});

  String? _token;

  final String headerKey;

  Future<void> _updateToken() async {
    final sp = sl<SharedPreferences>();
    _token = sp.getString('auth.token');
  }

  Request _transformRequest(Request request) =>
      request.updateContextEntry<HttpLinkHeaders>(
        (headers) => HttpLinkHeaders(
          headers: <String, String>{
            // Existing headers
            ...headers?.headers ?? <String, String>{},
            // Auth header
            if (_token != null) headerKey: _token!,
          },
        ),
      );

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    await _updateToken();

    final requestWithHeaders = _transformRequest(request);

    yield* forward!(requestWithHeaders);
  }
}
