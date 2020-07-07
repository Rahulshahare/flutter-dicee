import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  List color = [ Colors.blue, Colors.amber, Colors.red, Colors.cyan, Colors.deepPurple, Colors.orange, Colors.indigo, Colors.teal, Colors.pink, Colors.yellow ];
  int index = 1;
  void _changeColorIndex(){
    setState(() {
      index = Random().nextInt(9);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      home: Scaffold(
        backgroundColor: color[index],
        appBar: AppBar(
          backgroundColor: color[index],
          title: Text('Dicee',),
        ),
        body: DoubleBackToCloseApp(
          snackBar:  const SnackBar(content: Text('Tap again to exit.'),),
          child: MyHomePage(),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.format_color_fill),
          onPressed: (){
            _changeColorIndex();
          },
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(0.1),
          child: FlatButton(
            padding: EdgeInsets.all(0.0),
            color: Colors.white,
            child: Text(
              'DICE APP',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 2.0,
                color: color[index],
              ),
            ),
            onPressed: (){
              print('hello');
            },
          ),
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

        ],

      );

  }
}
