import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  BigButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.155,
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Color.fromARGB(255, 241, 0, 0),
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
