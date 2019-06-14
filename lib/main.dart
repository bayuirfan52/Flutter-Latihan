import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Flutter Demo",
    home: new HalSatu(),
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen[400],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("Flutter Latihan"),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Icon(
              Icons.local_pizza,
              size: 70.0,
              color: Colors.lightGreen,
            ),
            new Row(
              children: <Widget>[
                new Icon(
                  Icons.donut_large,
                  size: 70.0,
                  color: Colors.lightGreen,
                ),
                new Icon(
                  Icons.donut_large,
                  size: 70.0,
                  color: Colors.lightGreen,
                ),
                new Icon(
                  Icons.donut_large,
                  size: 70.0,
                  color: Colors.lightGreen,
                ),
              ],
            ),
            new Icon(
              Icons.cake,
              size: 70.0,
              color: Colors.lightGreen,
            ),
          ],
        ),
      ),
    );
  }
}
