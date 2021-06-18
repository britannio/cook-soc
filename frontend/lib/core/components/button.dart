import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onTap,
    required this.text,
    this.padding = const EdgeInsets.all(16),
  }) : super(key: key);
  final VoidCallback? onTap;
  final String text;

  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder()),
            backgroundColor: MaterialStateProperty.all(
              Theme.of(context).accentColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
