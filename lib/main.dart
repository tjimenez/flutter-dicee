import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Dicee'),
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceeWidgetOne = 1;
  int diceeWidgetTwo = 1;

  void getNumber() {
    setState(() {
      diceeWidgetOne = Random().nextInt(6) + 1;
      diceeWidgetTwo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('assets/images/dice$diceeWidgetOne.png'),
              onPressed: () => getNumber(),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('assets/images/dice$diceeWidgetTwo.png'),
              onPressed: () => getNumber(),
            ),
          ),
        ],
      ),
    );
  }
}
