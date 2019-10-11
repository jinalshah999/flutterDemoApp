import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyAppHomePage(),
    );
  }
}

class MyAppHomePage extends StatefulWidget {
  @override
  _MyAppHomePage createState() {
    // TODO: implement createState
    return _MyAppHomePage();
  }
}

class _MyAppHomePage extends State<MyAppHomePage> {
  int _counter = 0;
void incCounter(){
 setState(() {
  _counter=_counter+1; 
 });
 
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Factorial Demo'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Click Me1'),
            onPressed: incCounter,
          ),
          Text(
            'You pressed Button $_counter',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
