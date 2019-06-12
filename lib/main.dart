import './first-born-components/atoms/FBButton.dart';

import './first-born-components/atoms/FBText.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: ListView(
              children: <Widget>[
                FBText(data: 'H1', size: "h1"),
                FBText(data: 'H2', size: "h2"),
                FBText(data: 'H3', size: "h3"),
                FBText(data: 'H4', size: "h4"),
                FBText(data: 'H5', size: "h5"),
                FBText(data: 'H6', size: "h6"),
                FBText(data: 'paragraph'),
                FBText(data: 'callout', size: "callout"),
                FBText(data: 'sub_heading', size: "sub_heading"),
                FBText(data: 'footnote', size: "footnote"),
                FBText(data: 'caption_big', size: "caption_big"),
                FBText(data: 'caption_small', size: "caption_small"),
                FBText(
                  data: 'colored',
                  color: Colors.blue,
                ),
                FBText(
                  data: 'bold',
                  bold: true,
                ),
                FBButton(
                  onPress: () {},
                  icon: Icons.touch_app,
                  color: Colors.red,
                ),
                FBButton(
                  onPress: () {},
                  icon: Icons.touch_app,
                  text: "Click me",
                  color: Colors.green,
                ),
                FBButton(
                  onPress: () {},
                  icon: Icons.touch_app,
                  text: "Click me",
                  color: Colors.green,
                  transparent: true,
                )
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
