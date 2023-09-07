import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  BigButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text.toString()),
      ),
    );
  }
}
