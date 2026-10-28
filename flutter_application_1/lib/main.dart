import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CalculatorScreen(),
    ); // MaterialApp
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "9X9+9",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                  Text(
                    "9",
                    style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                  ), // TextStyle
                ), // Text
              ],
            ), // Column
          ), // Padding
        ), // Container
        Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                spacing: 8,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 30,
                   children: [
                ReusableBtn(text: "C", bgColor: Colors.teal.shade400),
                ReusableBtn(text: "+/-", bgColor: Colors.teal.shade400),
                ReusableBtn(text: "%", bgColor: Colors.teal.shade400),
                ReusableBtn(text: "÷", bgColor: Colors.teal.shade600),
              ],
            ), // Row
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 30,
                   children: [
                ReusableBtn(text: "7", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "8", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "9", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "*", bgColor: Colors.teal.shade600),
              ],
            ), // Row
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 30,
                   children: [
                ReusableBtn(text: "4", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "5", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "6", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "-", bgColor: Colors.teal.shade600),
              ],
            ), // Row
              Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 30,
                   children: [
                ReusableBtn(text: "1", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "2", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "3", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "+", bgColor: Colors.teal.shade600),
              ],
            ), // Row
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 30,
                   children: [
                ReusableBtn(text: ".", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "0", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "<", bgColor: Colors.teal.shade300),
                ReusableBtn(text: "=", bgColor: Colors.teal.shade600),
              ],
            ), // Row
            
          ],
        ), // Column
      ), // Padding
  ), // Expanded
],
), // Column
); // Scaffold
}
}
     class ReusableBtn extends StatelessWidget {
  final Color? bgColor;
  final String text;
  const ReusableBtn({super.key, required this.text, this.bgColor = Colors.teal});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.shade900,
            offset: Offset(0, 2),
            spreadRadius: 1,
            blurRadius: 5,
          ), // BoxShadow
        ],
      ), // BoxDecoration
      width: 70,
      
      child: Center(
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 24)),
      ), // Center

    ); // Container
  }
}