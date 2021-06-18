import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

class RiverpodLogger extends ProviderObserver {
  const RiverpodLogger._();

  static final RiverpodLogger instance = RiverpodLogger._();

  @protected
  static final log = Logger('$RiverpodLogger');

  @override
  void didUpdateProvider(ProviderBase provider, Object? newValue) {
    log.fine(
      '''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''',
    );
  }
}
