import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Homepage(),
    routes: <String, WidgetBuilder> {
      "/SecondPage": (BuildContext context) => new SecondPage()
    }
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.green),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.android, color: Colors.green),
                iconSize: 70.0,
                onPressed: () {Navigator.of(context).pushNamed("/SecondPage");}
              ),
              new Text("Home")
            ]
          )
        )
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second Page"), backgroundColor: Colors.lightBlue),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.home, color: Colors.lightBlue),
                iconSize: 70.0,
                onPressed: () {Navigator.of(context).pushNamed("/");}
              ),
              new Text("Second Page")
            ]
          )
        )
      )
    );
  }
}