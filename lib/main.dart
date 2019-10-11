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
  String _ans = '',output='';
  double num1,num2,result;
  String oper='';
  void buttonPressed(String value) {
    if (value == "CE") {
      _ans='';
      num1=0.0;
      num2=0.0;
      oper='';
      output='';
    }
    else if(value=="+"||value=="-"||value=="/"||value=="*"){
      num1= double.parse(_ans);
      _ans='';
      oper=value;
    }
    else if(value=="="){
      num2=double.parse(_ans);
        if(oper=="+"){
          result=num1+num2;
        }
        if(oper=="-"){
          result=num1-num2;
        }
        if(oper=="*"){
          result=num1*num2;
        }
        if(oper=="/"){
          result=num1/num2;
        }
        _ans=result.toString();
    }
    else{
      _ans=_ans+value;
    }
    setState(() {
     output=_ans; 
    });
  }

  Widget makeButton(String buttonText) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(24.0),
        onPressed: () {
          buttonPressed(buttonText);
        },
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Factorial Demo'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              '$_ans',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeButton('7'),
                    makeButton('8'),
                    makeButton('9'),
                    makeButton('/'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    makeButton('4'),
                    makeButton('5'),
                    makeButton('6'),
                    makeButton('*'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    makeButton('1'),
                    makeButton('2'),
                    makeButton('3'),
                    makeButton('+'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    makeButton('.'),
                    makeButton('0'),
                    makeButton('00'),
                    makeButton('-'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    makeButton('CE'),
                    makeButton('='),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
