import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String number;
  Screen({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.857,
      height: MediaQuery.sizeOf(context).height * 0.15,
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
          color: Colors.blueGrey,
        ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 37, 61, 37),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                number.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
