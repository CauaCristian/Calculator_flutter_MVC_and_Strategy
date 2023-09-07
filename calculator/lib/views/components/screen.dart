import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String number;
  Screen({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      padding: const EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            number.toString(),
            textAlign: TextAlign.end,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
