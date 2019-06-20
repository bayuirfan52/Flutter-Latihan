import 'package:flutter/material.dart';
import './hal_komputer.dart' as komputer;
import './hal_speaker.dart' as speaker;
import './hal_headset.dart' as headset;
import './hal_radio.dart' as radio;

void main() {
  runApp(new MaterialApp(
    title: "Flutter Demo",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Flutter Tab bar"),
        bottom: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer), text: "Komputer",),
            new Tab(icon: new Icon(Icons.speaker), text: "Speaker"),
            new Tab(icon: new Icon(Icons.headset), text: "Headset"),
            new Tab(icon: new Icon(Icons.radio), text: "Radio")
          ],
        ),
      ),

      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new komputer.Komputer(),
          new speaker.Speaker(),
          new headset.Headset(),
          new radio.Radio()
        ],
      ),
    );
  }
}