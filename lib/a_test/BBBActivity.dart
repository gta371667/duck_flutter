import 'package:flutter/material.dart';
import 'package:duck_flutter/widget/base/BaseState.dart';
import 'package:duck_flutter/widget/base/BaseStatefulWidget.dart';
import 'package:duck_flutter/widget/BaseAppBar.dart';

class BBBActivity extends BaseStatefulWidget {

  @override
  State<StatefulWidget> putState() {
    return TestActivityState();
  }
}

class TestActivityState extends BaseState<BBBActivity> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: getAppBar(),
    );
  }

  getAppBar() {
    return BaseAppBar(
      context,
      backgroundColor: Colors.red,
      isCenterTitle: true,
      titleText: "BBBActivity",
      iconHighlightColor: Colors.blue,
      iconSplashColor: Colors.amber,
      actions: <Widget>[
        new Container(
          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
          child: new IconButton(
              icon: Image.asset(
                'assets/images/ic_bar.png',
              ),
              disabledColor: Colors.red,
              highlightColor: Colors.blue,
              splashColor: Colors.deepPurple,
              color: Colors.black,
              onPressed: () {
                print("title IconButton");
              }),
        )
      ],
    );
  }
}
