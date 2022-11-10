import 'package:flutter/material.dart';
import 'package:wisata_bandung/second_screen.dart';

class FirstScreen extends StatelessWidget {
  final String message = 'Hello from First Screen!';

  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text('First Screen'),
      ),
      body: Center (
        child: RaisedButton(
          child: Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(message)));
          },
        ),
      ),
    );
  }
}