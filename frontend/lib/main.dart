import 'dart:async';

import 'package:cooksoc/cook_soc_app.dart';
import 'package:cooksoc/core/logging/riverpod_logger.dart';
import 'package:cooksoc/core/logging/setup.dart';
import 'package:cooksoc/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    setupLogging();
    await configureDI(Env.nonWeb);
    runApp(
      ProviderScope(
        observers: [RiverpodLogger.instance],
        child: CookSocApp(),
      ),
    );
  }, (exception, stackTrace) {
    debugPrint(exception.toString());
    debugPrintStack(stackTrace: stackTrace);
  });
}
