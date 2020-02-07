import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final   String a ='(👍 ͡👁️ ͜ʖ ͡👁️)👍';
  final  String b = '( ͡👁️ ͜ʖ ͡👁️)';
  final  String c= '💪( ͡🔥 ͜ʖ ͡🔥҂)';
    return Scaffold(
 appBar: AppBar(
          title: Text("Pagina 3"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
 MaterialButton(
                color: Colors.white10,
                child: Text("$a",
                style: TextStyle(
                  color: Colors.black),
                  ),
                  onPressed: (){
Navigator.of(context).pop(a);
                  },
              ),
               MaterialButton(
                color: Colors.black,
                child: Text("$b",
                style: TextStyle(
                  color: Colors.white),
                  ),
                  onPressed: (){
Navigator.of(context).pop(b);

                  },
              ),
               MaterialButton(
                color: Colors.white10,
                child: Text("$c",
                style: TextStyle(
                  color: Colors.black),
                  ),
                  onPressed: (){
Navigator.of(context).pop(c);

                  },
              ),
          ],),
    );
  }
}