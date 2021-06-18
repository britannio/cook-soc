import 'package:cooksoc/core/asset_gen/assets.gen.dart';
import 'package:cooksoc/core/components/action_snackbar.dart';
import 'package:cooksoc/core/components/button.dart';
import 'package:cooksoc/core/components/virtual_keyboard_padding.dart';
import 'package:cooksoc/core/utils/alert_mixin.dart';
import 'package:cooksoc/features/auth/notifiers/sign_in_notifier.dart';
import 'package:cooksoc/features/auth/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with AlertMixin<String> {
  @override
  void initState() {
    super.initState();
    context.read(signInProvider.notifier).addAlertMessageListener(this);
  }

  @override
  void onAlert(String message) => ActionSnackBar.showError(context, message);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: VirtualKeyboardPadding(
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: EdgeInsets.all(16),
            children: [
              const SizedBox(height: 48),
              Assets.svg.barbeque.svg(height: 200),
              const SizedBox(height: 48),
              Center(
                child: Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 32),
              Center(child: _Instructions()),
              const SizedBox(height: 32),
              Consumer(
                builder: (context, watch, child) {
                  final state = watch(signInProvider);
                  return state.codeSent ? _OTPForm() : _EmailForm();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Instructions extends ConsumerWidget {
  const _Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(signInProvider);
    final boldText = TextStyle(fontWeight: FontWeight.bold);
    return Text.rich(
      TextSpan(
        children: [
          if (state.codeSent) ...[
            TextSpan(text: 'Enter the code sent to '),
            TextSpan(text: state.email, style: boldText),
          ] else ...[
            TextSpan(text: 'We will send a '),
            TextSpan(
              text: 'One Time Password',
              style: boldText,
            ),
            TextSpan(text: ' to your '),
            TextSpan(
              text: 'University of Southampton',
              style: boldText,
            ),
            TextSpan(text: ' email'),
          ],
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

class _OTPForm extends ConsumerWidget {
  const _OTPForm({Key? key}) : super(key: key);

  static final _codeFormKey = GlobalKey<FormState>();

  void _verifyCode(BuildContext context) {
    if (!_codeFormKey.currentState!.validate()) return;

    context.read(signInProvider.notifier).verifyAuthCode();
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(signInProvider);

    return Column(
      children: [
        Form(
          key: _codeFormKey,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Code',
            ),
            textCapitalization: TextCapitalization.characters,
            textInputAction: TextInputAction.done,
            onChanged: context.read(signInProvider.notifier).setAuthCode,
            validator: otpValidator,
            maxLength: 6,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            onFieldSubmitted: (_) => _verifyCode(context),
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                // From UserResolver.ts
                RegExp(r'[0123456789ABCDEFGHIJKLMNPQRSTUVWXYZ]'),
              )
            ],
          ),
        ),
        const SizedBox(height: 32),
        Button(
          padding: EdgeInsets.zero,
          onTap: state.loading ? null : () => _verifyCode(context),
          text: 'Verify Code',
        ),
      ],
    );
  }
}

class _EmailForm extends ConsumerWidget {
  const _EmailForm({Key? key}) : super(key: key);

  static final _formKey = GlobalKey<FormState>();

  void _sendCode(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;
    context.read(signInProvider.notifier).sendAuthCode();
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(signInProvider);

    return Column(
      children: [
        Form(
          key: _formKey,
          child: TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            onChanged: context.read(signInProvider.notifier).setEmail,
            validator: emailValidator,
            onFieldSubmitted: (_) => _sendCode(context),
            inputFormatters: [FilteringTextInputFormatter.deny(' ')],
          ),
        ),
        const SizedBox(height: 32),
        Button(
          padding: EdgeInsets.zero,
          onTap: state.loading ? null : () => _sendCode(context),
          text: 'Send Code',
        ),
      ],
    );
  }
}
