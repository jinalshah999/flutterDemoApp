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
  String ans='';
  final controller_number=TextEditingController();
void incCounter(){
 setState(() {
  _counter=_counter+1; 
 });
 }
 void factorial(){
   int no=int.parse(controller_number.text);
   int fact=1;
   while(no>0){
     fact=fact*no;
     no=no-1;
   }
   setState(() {
    ans=fact.toString(); 
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
          ),
          TextFormField( keyboardType: TextInputType.number,
          controller: controller_number,
            decoration: InputDecoration(
            hintText: 'Enter Number',
          ),),
          RaisedButton(
            child: Text('Facto'),
            onPressed: factorial,
          ), 
          Text('ans is $ans',style: TextStyle(fontSize: 30.0,),)
        ],
      ),
    );
  }
}
