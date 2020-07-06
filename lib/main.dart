import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Dicee',),
        ),
        body: DoubleBackToCloseApp(
          snackBar:  const SnackBar(content: Text('Tap again to exit.'),),
          child: MyHomePage(),
        ),
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _leftDiceNumber = 1;
  int _rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      _leftDiceNumber = Random().nextInt(6) + 1;
      _rightDiceNumber = Random().nextInt(6) + 1 ;
    });
    print('left = $_leftDiceNumber and right = $_rightDiceNumber');
  }

  @override
  Widget build(BuildContext context) {

      return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: FlatButton(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$_leftDiceNumber.png'),
                  onPressed: (){
                    changeDiceFace();
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child:  FlatButton(
                  padding: EdgeInsets.all(8.0),
                    child: Image.asset('images/dice$_rightDiceNumber.png'),
                  onPressed: (){
                      changeDiceFace();
                  },
                ),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(10.0),
                  autofocus: true,
                  color: Colors.white,
                  onPressed: (){
                    changeDiceFace();
                  },
                  child: Text(
                      'SHUFFLE',
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                  ),
                ),
              ),
            ],
          ),
        ],

      );

  }
}
