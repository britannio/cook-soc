import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';

mixin AlertMixin<T> {
  void onAlert(T message);
}

mixin AlertMixinTransmitter<T, State> on StateNotifier<State> {
  @protected
  List<AlertMixin<T>> alertListeners = <AlertMixin<T>>[];

  @protected
  void onAlert(T message) {
    if (message == null) return;
    for (final listener in alertListeners) {
      listener.onAlert(message);
    }
  }

  void addAlertMessageListener(AlertMixin<T> listener) =>
      alertListeners.add(listener);

  @override
  void dispose() {
    super.dispose();
    alertListeners.clear();
  }
}
