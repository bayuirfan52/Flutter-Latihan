import 'package:flutter/material.dart';

class Speaker extends StatelessWidget {
  const Speaker({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Speaker", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.speaker, size:90.0)
          ],
        ),
      ),
    );
  }
}