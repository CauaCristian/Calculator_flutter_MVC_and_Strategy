import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String number;
  final String operacao;
  Screen({required this.number, required this.operacao});

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Text(
                    operacao,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    number.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
