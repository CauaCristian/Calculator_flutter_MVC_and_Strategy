import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  Button({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text.toString()),
      ),
    );
  }
}
