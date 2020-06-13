import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var x =1;
  void changeFace(){
    setState(() {
      x = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text(
                  'Roll-on-Dice',
                  style: TextStyle(
                    fontFamily: 'MetalMania',
                    fontSize: 75,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 92),
                  child: GestureDetector(
                    child: Image(
                      image: AssetImage('images/dice$x.png'),
                      height: 300,
                    ),
                    onTap: (){
                      changeFace();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
