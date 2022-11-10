/*
  - Import digunakan untuk memanggil fungsi-fungsi dari berkas
  flutter yg lain.
  - pada kode dibawah, kita meng-import kode-kode yang terdapat
  dalam library material bawaan flutter.
  - library tersebut menyediakan widget yg termasuk dalam 
  material designa.
  - pastikan kode ini ada pada bagian atas sebelum kode lain
  dijalankan
*/
import 'package:flutter/material.dart';


/* - [main()] merupakan kode dasar dari project clutter kita.
 - Flutter akan menjalankan fungsi [main()] pertama kali,
 - yang nantinya akan menjalankan [runApp()] dan memanggil myApp()
*/
void main() => runApp(MyApp());

// MyApp disini merupakan sebuah class yang menampilkan komponen Flutter ke layar atau dikenal dengan widgets

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold (
        body: Center (
          // child: Heading (
          //   text: "Hello World!",
          // )
          child: BiggerText(text: "Hello World!"),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  Heading({
    this.text
  });

  @override
  Widget build(BuildContext context){
    return Text (
      text,
      style: TextStyle (
        fontSize: 24.0,
        fontWeight: FontWeight.bold,  
      ),
    );
  }
}


class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({
    this.text
  });

  @override
  _BiggerTextState createState() => _BiggerTextState();
}


class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        RaisedButton(
          color: Colors.cyan,
          child: Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
} 