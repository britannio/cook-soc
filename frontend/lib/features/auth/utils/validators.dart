/// TextField validators for the Sign In Screen

String? otpValidator(String? code) {
  if (code == null || code.isEmpty) {
    return 'Please enter the code sent to your email.';
  }

  return null;
}

String? emailValidator(String? email) {
  if (email == null || email.trim().isEmpty) {
    return 'Please enter your UoS email.';
  }

  final regExp = RegExp(r'^[^@]*@(?:soton|southampton)\.ac\.uk$');
  if (!regExp.hasMatch(email)) {
    return 'Please enter a valid University Of Southampton email.';
  }

  return null;
}
