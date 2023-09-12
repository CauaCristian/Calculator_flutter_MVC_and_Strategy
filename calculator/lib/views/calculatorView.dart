import 'package:calculator/views/components/bigButton.dart';
import 'package:calculator/views/components/ButtonBlue.dart';
import 'package:flutter/material.dart';
import 'components/button.dart';
import 'components/screen.dart';
import '../controllers/calculatorController.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _MyAppState();
}

class _MyAppState extends State<Calculator> {
  CalculatorController calculatorController = CalculatorController();
  String _number = "0";
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Calculadora"),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Screen(
                  number: _number.toString(),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.zero, bottom: Radius.circular(30)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          ButtonBlue(
                              text: "AC",
                              onPressed: () {
                                setState(() {
                                  _number = "0";
                                  _index = 0;
                                });
                                calculatorController.setNumber1(0.0);
                                calculatorController.setNumber2(0.0);
                                calculatorController.setOperation("+");
                              }),
                          Button(
                              text: "7",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "7";
                                    return;
                                  }
                                  _number += "7";
                                });
                              }),
                          Button(
                              text: "4",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "4";
                                    return;
                                  }
                                  _number += "4";
                                });
                              }),
                          Button(
                              text: "1",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "1";
                                    return;
                                  }
                                  _number += "1";
                                });
                              }),
                          Button(
                              text: "0",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "0";
                                    return;
                                  }
                                  _number += "0";
                                });
                              }),
                        ],
                      ),
                      Column(
                        children: [
                        ButtonBlue(
                              text: "CE",
                              onPressed: () {
                                setState(() {
                                  if (_number.length == 1) {
                                    _number = _number.substring(
                                        0, _number.length - 1);
                                    _number = "0";
                                    return;
                                  }
                                  _number =
                                      _number.substring(0, _number.length - 1);
                                });
                              }),
                          Button(
                              text: "8",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "8";
                                    return;
                                  }
                                  _number += "8";
                                });
                              }),
                          Button(
                              text: "5",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "5";
                                    return;
                                  }
                                  _number += "5";
                                });
                              }),
                          Button(
                              text: "2",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "2";
                                    return;
                                  }
                                  _number += "2";
                                });
                              }),
                          Button(
                              text: ".",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "0.";
                                    return;
                                  }
                                  _number += ".";
                                });
                              }),
                        ],
                      ),
                      Column(
                        children: [
                          Button(
                              text: "%",
                              onPressed: () {
                                if (_index < 1) {
                                  if(_number == "0"){
                                    return;
                                  }
                                  calculatorController.setOperation("%");
                                  calculatorController
                                      .setNumber1(double.parse(_number));
                                  setState(() {
                                    _number = "0";
                                    _index++;
                                  });
                                }
                              }),
                          Button(
                              text: "9",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "9";
                                    return;
                                  }
                                  _number += "9";
                                });
                              }),
                          Button(
                              text: "6",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "6";
                                    return;
                                  }
                                  _number += "6";
                                });
                              }),
                          Button(
                              text: "3",
                              onPressed: () {
                                setState(() {
                                  if (_number == "0") {
                                    _number = "3";
                                    return;
                                  }
                                  _number += "3";
                                });
                              }),
                          Button(
                              text: "=",
                              onPressed: () {
                                if (_index == 0) {
                                  calculatorController
                                      .setNumber1(double.parse(_number));
                                }
                                if (_index == 1) {
                                  calculatorController
                                      .setNumber2(double.parse(_number));
                                }
                                setState(() {
                                  _number = calculatorController
                                      .calculate()
                                      .toString();
                                  _index = 0;
                                });
                              }),
                        ],
                      ),
                      Column(
                        children: [
                          Button(
                              text: "÷",
                              onPressed: () {
                                if (_index < 1) {
                                  if(_number == "0"){
                                    return;
                                  }
                                  calculatorController.setOperation("/");
                                  calculatorController
                                      .setNumber1(double.parse(_number));
                                  setState(() {
                                    _number = "0";
                                    _index++;
                                  });
                                }
                              }),
                          Button(
                              text: "x",
                              onPressed: () {
                                if (_index < 1) {
                                  if(_number == "0"){
                                    return;
                                  }
                                  calculatorController.setOperation("*");
                                  calculatorController
                                      .setNumber1(double.parse(_number));
                                  setState(() {
                                    _number = "0";
                                    _index++;
                                  });
                                }
                              }),
                          Button(
                              text: "-",
                              onPressed: () {
                                if (_index < 1) {
                                  if(_number == "0"){
                                    return;
                                  }
                                  calculatorController.setOperation("-");
                                  calculatorController
                                      .setNumber1(double.parse(_number));
                                  setState(() {
                                    _number = "0";
                                    _index++;
                                  });
                                }
                              }),
                          BigButton(
                              text: "+",
                              onPressed: () {
                                if (_index < 1) {
                                  if(_number == "0"){
                                    return;
                                  }
                                  calculatorController.setOperation("+");
                                  calculatorController
                                      .setNumber1(double.parse(_number));
                                  setState(() {
                                    _number = "0";
                                    _index++;
                                  });
                                }
                              })
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
