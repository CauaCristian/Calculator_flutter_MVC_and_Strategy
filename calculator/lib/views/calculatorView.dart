import 'package:calculator/views/components/bigButton.dart';
import 'package:flutter/material.dart';
import 'components/button.dart';
import 'components/screen.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _MyAppState();
}

class _MyAppState extends State<Calculator> {
  String? number = "0";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.purple),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Calculadora"),
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Screen(
                  number: number.toString(),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.zero, bottom: Radius.circular(30)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Button(text: "AC", onPressed: () {}),
                          Button(text: "7", onPressed: () {}),
                          Button(text: "4", onPressed: () {}),
                          Button(text: "1", onPressed: () {}),
                          Button(text: "0", onPressed: () {}),
                        ],
                      ),
                      Column(
                        children: [
                          Button(text: "CE", onPressed: () {}),
                          Button(text: "8", onPressed: () {}),
                          Button(text: "5", onPressed: () {}),
                          Button(text: "2", onPressed: () {}),
                          Button(text: ".", onPressed: () {}),
                        ],
                      ),
                      Column(
                        children: [
                          Button(text: "%", onPressed: () {}),
                          Button(text: "9", onPressed: () {}),
                          Button(text: "6", onPressed: () {}),
                          Button(text: "3", onPressed: () {}),
                          Button(text: "=", onPressed: () {}),
                        ],
                      ),
                      Column(
                        children: [
                          Button(text: "÷", onPressed: () {}),
                          Button(text: "x", onPressed: () {}),
                          Button(text: "-", onPressed: () {}),
                          BigButton(text: "+", onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
