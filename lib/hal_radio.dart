import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Radio", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.radio, size:90.0)
          ],
        ),
      ),
    );
  }
}