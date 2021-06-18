import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:universal_platform/universal_platform.dart';

bool isMobile() => UniversalPlatform.isAndroid || UniversalPlatform.isIOS;

bool isIOS() => UniversalPlatform.isIOS;

bool isAndroid() => UniversalPlatform.isAndroid;

bool isMacOS() => UniversalPlatform.isMacOS;

bool isWindows() => UniversalPlatform.isWindows;

bool isDesktop() => isWindows() || isMacOS() || UniversalPlatform.isLinux;

bool isWebOrDesktop() => kIsWeb || isDesktop();

final bool kIsTest =
    !kIsWeb && Platform.environment.containsKey('FLUTTER_TEST');

const String kCommitHash = String.fromEnvironment('BUILD_COMMIT');

final String commitHashShort =
    kCommitHash.isNotEmpty ? kCommitHash.substring(0, 7) : 'Unknown';

const String kBuildID = String.fromEnvironment('BUILD_ID');
const String kGitBranch = String.fromEnvironment('BUILD_BRANCH');

const kFirebaseEmulator =
    bool.fromEnvironment('FIREBASE_EMULATOR', defaultValue: false);

const bool kDevBuild = bool.fromEnvironment('DEV_BUILD', defaultValue: false);

bool isMediumDisplay(BuildContext context) =>
    getWindowType(context) >= AdaptiveWindowType.medium;

bool isLargeDisplay(BuildContext context) =>
    getWindowType(context) >= AdaptiveWindowType.large;

bool showMobileUI(BuildContext context) {
  if (!kIsWeb && isDesktop()) {
    // Always show a tablet/desktop ui when running a native desktop app
    return false;
  }
  return !isMediumDisplay(context);
}
