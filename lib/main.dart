import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Flutter Demo",
    home: new HalSatu(),
    routes: <String, WidgetBuilder>{
      '/Halsatu' : (BuildContext context) => new HalSatu(),
      '/Haldua' : (BuildContext context) => new HalDua()
    },
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
          child: new Text("Hal Satu"),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Center(
        child: new IconButton(
          icon: Icon(Icons.headset),
          onPressed: (){
            Navigator.pushNamed(context, '/Haldua');
          },),
        ),
    );
  }
}

class HalDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen[400],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("Hal Dua"),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Center(
        child: new IconButton(
          icon: Icon(Icons.speaker),
          onPressed: (){
            Navigator.pushNamed(context, '/Halsatu')
          },),
        ),
    );
  }
}
