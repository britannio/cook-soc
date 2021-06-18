import 'package:cooksoc/core/graphql/exceptions/graphql_exception.dart';
import 'package:cooksoc/core/utils/alert_mixin.dart';
import 'package:ferry/ferry.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

import 'package:cooksoc/core/graphql/mutations/get_auth_token.req.gql.dart';
import 'package:cooksoc/core/graphql/mutations/send_auth_code.req.gql.dart';
import 'package:cooksoc/dependency_injection.dart';
import 'package:cooksoc/features/auth/models/sign_in_state.dart';
import 'package:cooksoc/features/auth/notifiers/auth_notifier.dart';
import 'package:meta/meta.dart';

final signInProvider = StateNotifierProvider<SignInNotifier, SignInState>(
  (ref) => sl<SignInNotifier>(),
);

@Injectable(env: Env.main)
class SignInNotifier extends StateNotifier<SignInState>
    with AlertMixinTransmitter {
  SignInNotifier(
    this._gql,
    this._authNotifier,
  ) : super(
          const SignInState(
            loading: false,
            email: '',
            codeSent: false,
            authCode: '',
          ),
        );

  @protected
  static final log = Logger('$SignInNotifier');

  final TypedLink _gql;
  final AuthNotifier _authNotifier;

  void setEmail(String email) => state = state.copyWith(email: email);

  void setAuthCode(String authCode) =>
      state = state.copyWith(authCode: authCode.toUpperCase());

  Future<void> sendAuthCode() async {
    state = state.copyWith(loading: true);

    try {
      final response = await _gql
          .request(GSendAuthCodeReq((b) => b..vars.email = state.email))
          .first;

      if (response.hasErrors) throw GraphQLException.fromResponse(response);

      final data = response.data!.sendAuthCode;
      if (data.success) {
        state = state.copyWith(codeSent: true);
      } else {
        onAlert(data.errorMessage);
        log.warning(data.errorMessage);
      }
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      log.warning(e);
    }

    state = state.copyWith(loading: false);
  }

  Future<void> verifyAuthCode() async {
    state = state.copyWith(loading: true);
    try {
      final response = await _gql
          .request(GGetAuthTokenReq(
            (b) => b
              ..vars.email = state.email
              ..vars.code = state.authCode,
          ))
          .first;

      if (response.hasErrors) throw GraphQLException.fromResponse(response);

      final data = response.data!.getAuthToken;

      if (data.success) {
        final token = data.authToken!;
        await _authNotifier.saveToken(token);
      } else {
        onAlert(data.errorMessage);
        log.warning(data.errorMessage);
      }
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      log.warning(e);
    }
    state = state.copyWith(loading: false);
  }
}
