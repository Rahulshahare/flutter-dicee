import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _imageNumber = 6;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Dicee',),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: FlatButton(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$_imageNumber.png'),
                  onPressed: (){
                    print('one');
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child:  FlatButton(
                  padding: EdgeInsets.all(8.0),
                    child: Image.asset('images/dice$_imageNumber.png'),
                  onPressed: (){
                      print('two');
                  },
                ),
              ),

            ],
          ),
        ],

      ),
    );

  }
}
