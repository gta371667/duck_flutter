import 'package:duck_flutter/LaunchActivity.dart';
import 'package:duck_flutter/MainActivity.dart';
import 'package:duck_flutter/TestActivity.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'duck_flutter',
      theme: ThemeData(
          primarySwatch: Colors.green, //整體主題顏色
          textTheme:
              TextTheme(title: TextStyle(color: Colors.red, fontSize: 100))),
//      home: MainActivity()
//      home: TestActivity(),
      home: LaunchActivity(),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => new TestActivity(),
        '/c': (BuildContext context) => new MainActivity(),
      },
    );
  }
}
