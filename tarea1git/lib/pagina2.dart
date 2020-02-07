import 'package:flutter/material.dart';
import 'dart:math';

class Pagina2 extends StatefulWidget {
  Pagina2({Key key}) : super(key: key);

  @override
  _Pagina2State createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
 int x = generateRandom();
  void generate() {
    setState(() {
      x = generateRandom();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue[300], Colors.lightBlue[100]],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Pagina 2"),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  "Genere numero random",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 29,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  "$x",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 36,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
                child: MaterialButton(
              color: Colors.white,
              child: Text(
                "Generar",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                generate();
              },
            )),
            MaterialButton(
              color: Colors.white,
              child: Text(
                "Guardar",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop(x.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}

int generateRandom() {
  int i = Random().nextInt(1000);
  return i;
}
