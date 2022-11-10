import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // widget ini merupakan inti dari aplikasi kamu
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData (
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        leading: IconButton(
          icon: Icon (
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text('First Screen'),
        actions: <Widget>[
          IconButton (
            icon: Icon (
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: (
        Container (
          child: Text('Welcome to my Apps', style: TextStyle(fontSize: 30)),
          decoration: BoxDecoration (
            color: Colors.red,
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.white, width: 5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow (
                color: Colors.black,
                offset: Offset(3, 6),
                blurRadius: 10,
              ),
            ],
          ),
          width: 400,
          height: 100,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
        )
      )
      );
  }
}

