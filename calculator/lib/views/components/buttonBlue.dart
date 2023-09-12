import 'package:flutter/material.dart';

class ButtonBlue extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  ButtonBlue({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.07,
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Color.fromARGB(255, 0, 36, 241),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text.toString(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
