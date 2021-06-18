import 'dart:async';
import 'dart:convert';

import 'package:cooksoc/core/graphql/exceptions/graphql_exception.dart';
import 'package:cooksoc/core/graphql/mutations/delete_account.req.gql.dart';
import 'package:cooksoc/core/graphql/queries/get_user.req.gql.dart';
import 'package:cooksoc/features/auth/models/user.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cooksoc/dependency_injection.dart';
import 'package:cooksoc/features/auth/models/auth_state.dart';
import 'package:cooksoc/features/auth/models/auth_union.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => sl<AuthNotifier>(),
);

@LazySingleton(env: Env.main)
class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(
    this._gql,
    this._preferences,
  ) : super(AuthState.initial()) {
    _initAuthUnion();
    _autoFetchUser();
  }

  static const _spPrefix = 'auth';

  @protected
  static final log = Logger('$AuthNotifier');

  final TypedLink _gql;
  final SharedPreferences _preferences;

  String? get _token => _preferences.getString('$_spPrefix.token');
  User? get _user {
    if (state.user != null) return state.user;
    final userJson = _preferences.getString('$_spPrefix.user');
    if (userJson == null || userJson.isEmpty) return null;
    return User.fromJson(jsonDecode(userJson));
  }

  void _initAuthUnion() {
    state = state.copyWith(
      authUnion: _token != null && _user != null
          ? AuthUnion.authenticated(user: _user!)
          : const AuthUnion.unauthenticated(),
    );
  }

  void _autoFetchUser() {
    if (_token == null) return;
    _fetchUser();
  }

  Future<void> _saveUser(User user) async {
    state = state.copyWith(
      authUnion: AuthUnion.authenticated(user: user),
      user: user,
    );
    await _preferences.setString('$_spPrefix.user', jsonEncode(user.toJson()));
  }

  Future<void> saveToken(String authToken) async {
    await _preferences.setString('$_spPrefix.token', authToken);
    await _fetchUser();
  }

  Future<void> _fetchUser() async {
    log.info('Fetching user');
    final response = await _gql.request(GGetUserReq()).first;
    log.info('User fetch response: ${response.data?.getUser}');
    if (response.hasErrors || !response.data!.getUser.success) return;
    final gqlUser = response.data!.getUser.user!;

    final user = User(
      id: gqlUser.id,
      name: gqlUser.name,
      email: gqlUser.email,
      isCommittee: gqlUser.isComittee,
    );

    await _saveUser(user);
  }

  Future<void> signOut() async {
    log.info('Signing out');
    await _preferences.setString('$_spPrefix.user', '');
    await _preferences.setString('$_spPrefix.token', '');
    state = state.copyWith(
      authUnion: const AuthUnion.unauthenticated(),
      user: null,
    );
  }

  Future<void> deleteAccount() async {
    log.info('Deleting Account');
    final response = await _gql.request(GDeleteAccountReq()).first;
    if (response.hasErrors) throw GraphQLException.fromResponse(response);
    final success = response.data!.deleteAccount.success;
    if (!success) return;
    await signOut();
  }
}
