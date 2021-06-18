import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:overlay_support/overlay_support.dart';

class ActionSnackBar extends StatelessWidget {
  const ActionSnackBar({
    Key? key,
    required this.color,
    required this.borderColor,
    required this.text,
    required this.actionText,
    this.onActionTap,
  }) : super(key: key);

  static Future<bool> showError(BuildContext context, String text) {
    return _show(
      context,
      text: text,
      color: Color(0xFF9D2C3B),
      borderColor: Colors.red,
      actionText: '',
    );
  }

  static Future<bool> showMessage(BuildContext context, String text) {
    return _show(
      context,
      text: text,
      color: Color(0xFF2C9D59),
      borderColor: Colors.green,
      actionText: '',
    );
  }

  static Future<bool> _show(
    BuildContext context, {
    required String text,
    required Color color,
    required Color borderColor,
    required String actionText,
  }) async {
    late OverlaySupportEntry entry;
    bool tapped = false;

    entry = showOverlayNotification(
      (_) => Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: ActionSnackBar(
          color: color,
          borderColor: borderColor,
          text: text,
          actionText: actionText,
          onActionTap: () {
            tapped = true;
            entry.dismiss();
          },
        ),
      ),
      duration: Duration(seconds: 3),
    );

    await entry.dismissed;
    return tapped;
  }

  final Color color;
  final Color borderColor;
  final String text;
  final String actionText;
  final VoidCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    final actionText = this.actionText;
    return Container(
      height: 68,
      constraints: BoxConstraints(maxWidth: 470),
      padding: EdgeInsets.only(left: 24),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
            spreadRadius: 0,
            blurRadius: 20,
            offset: Offset(0, 0), // changes position of shadow
          )
        ],
        color: Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(width: 2, color: borderColor),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Text(text)),
            if (actionText.isNotEmpty)
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onActionTap,
                child: Container(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  alignment: Alignment.center,
                  height: double.infinity,
                  child: Text(actionText),
                ),
              )
          ],
        ),
      ),
    );
  }
}
