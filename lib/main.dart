import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Dicee'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset('images/dice1.png'),
              ),
              Expanded(
                flex: 1,
                child:  Image.asset('images/dice1.png'),
              ),
            ],
          ),
        ],

      ),
    );

  }
}
