import 'dart:ui';
import 'package:tarea1/pagina3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

import 'pagina2.dart';
import 'pagina2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea',
      home: Pagina1(),
    );
  }
}

class Pagina1 extends StatefulWidget {
  Pagina1({Key key}) : super(key: key);

  @override
  _Pagina1State createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  String a = "";
  navegar(BuildContext context) async {
    a = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pagina3()),
    );
  }
   String b = "";
  navegar2(BuildContext context) async {
    b = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pagina2()),
    );
  }
String c ="";
_displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
              TextEditingController _textController = TextEditingController();
          return AlertDialog(
            title: Text('Ingrese datos'),
            content: TextField(
             controller: _textController,

              decoration: InputDecoration(hintText: "Ingrese palabra"),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Cancelar'),
                
                onPressed: () {
                  Navigator.of(context).pop();
                },
                
              ),
              new FlatButton(
                child: new Text('Guardar'),
                
                onPressed: () {
                  c = _textController.text;
                  Navigator.of(context).pop();
                  
                                  navegar2(context);

                },
                
              )
            ],
            
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarea 1"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Text(
                "BIENVENIDOS",
                style: TextStyle(fontSize: 38),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset("assets/pingu.png"),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                        child: Text(
                          "Seleccione la opcion a realizar: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                color: Colors.blueGrey,
                child: Text(
                  "Pagina 2",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  _displayDialog(context);

                },
              ),
              MaterialButton(
                color: Colors.blueGrey,
                child: Text(
                  "Pagina3",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  navegar(context);
                },
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
                        child: Text(
                          "Pg.2 =>$c$b ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ))),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                        child: Text(
                          "Pg.3 => $a",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ))),
              )
            ],
          ),
        ],
      ),
    );
  }
}





