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
      ),
      home: LaunchActivity(),
      routes: <String, WidgetBuilder>{
        '/act_main': (BuildContext context) => new MainActivity(),
      },
    );
  }
}

class LaunchActivity extends StatefulWidget {
  @override
  _LaunchActivityState createState() => _LaunchActivityState();
}

class _LaunchActivityState extends State<LaunchActivity> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(builder: (context) => new TestActivity()),
            (route) => route == null);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
      child: Image.asset('assets/images/gbf_bi.jpg'),
    );
  }
}
