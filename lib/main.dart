import 'package:flutter/material.dart';

import 'custom_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Containers',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Animated Containers'),
      debugShowCheckedModeBanner: false,
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
  double _height = 40.0;
  bool isExpanded = false;
  var _icon = Icons.arrow_drop_up;
  Widget get customContainer => AnimatedContainer(
    duration: Duration(milliseconds: 200),
      height: _height,
      color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Flexible(
                  child: Text("Here is my question",style: TextStyle(color: Colors.white),),
                ),
                Icon(
                  _icon,
                  color: Colors.white,
                  size: 20.0,
                )
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Welcome to RandomText. RandomText is a tool designers and developers can use to quickly grab dummy text in either Lorem Ipsum or Gibberish format. There are a number of features that make RandomText a little different from other Lorem Ipsum dummy text generators you may find around the web.",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: customContainer,
                    onTap: () {
                      setState(() {
                        _height = isExpanded?  40:160;
                        _icon = isExpanded? Icons.arrow_drop_down:Icons.arrow_drop_up;
                        isExpanded = !isExpanded;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
