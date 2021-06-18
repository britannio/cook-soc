import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

void setupLogging() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(
      details.copyWith(silent: false),
      forceReport: true,
    );
  };

  Logger.root.level = Level.CONFIG;
  Logger.root.onRecord.listen((LogRecord record) {
    debugPrint(
      '[${record.loggerName}] [${record.level.name}] ${record.message}',
    );
  });
}
