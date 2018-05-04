import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'GridSample',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    // Scaffold is a layout for the major Material Components.
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: null
        ),
        title: new Text("LayoutBuilderSample"),
      ),
      body: new LayoutBuilderSample()
    );
  }
}

class LayoutBuilderSample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints)
      {
        Size size = new Size(constraints.maxWidth,constraints.maxHeight);
        return new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new SizedBox(
                  height: size.height/4,
                  width: size.width/3,
                  child: new Card(color: Colors.blue),
                ),
                new SizedBox(
                  height: size.height/4,
                  width: size.width/2,
                  child: new Card(color: Colors.greenAccent),
                ),
                new SizedBox(
                  height: size.height/4,
                  width: size.width/6,
                  child: new Card(color: Colors.orange),
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                new SizedBox(
                  height: size.height/4,
                  width: size.width/4,
                  child: new Card(color: Colors.blue),
                ),
                new SizedBox(
                  height: size.height/4,
                  width: size.width/3,
                  child: new Card(color: Colors.greenAccent),
                ),
                new SizedBox(
                  height: size.height/4,
                  width: size.width/12*5,
                  child: new Card(color: Colors.orange),
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                new SizedBox(
                  height: size.height/4,
                  width: size.width/3*2,
                  child: new Card(color: Colors.blue),
                ),
                new SizedBox(
                  height: size.height/4,
                  width: size.width/5,
                  child: new Card(color: Colors.greenAccent),
                ),
                new SizedBox(
                  height: size.height/4,
                  width: size.width/15*2,
                  child: new Card(color: Colors.orange),
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                new SizedBox(
                  height: size.height/4,
                  width: size.width/6,
                  child: new Card(color: Colors.blue),
                ),
                new SizedBox(
                  height: size.height/4,
                  width: size.width/3,
                  child: new Card(color: Colors.greenAccent),
                ),
                new SizedBox(
                  height: size.height/4,
                  width: size.width/2,
                  child: new Card(color: Colors.orange),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
