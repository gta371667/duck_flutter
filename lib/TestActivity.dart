import 'package:duck_flutter/widget/BaseAppBar.dart';
import 'package:duck_flutter/widget/base/BaseState.dart';
import 'package:duck_flutter/widget/base/BaseStatefulWidget.dart';
import 'package:flutter/material.dart';
import 'package:xview/widget/MyMaterialView.dart';
import 'package:xview/xview.dart';

class TestActivity extends BaseStatefulWidget {
  @override
  State<StatefulWidget> putState() {
    return TestActivityState();
  }
}

class TestActivityState extends BaseState<TestActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/ic_login_bg.webp"),
          fit: BoxFit.cover,
        ),
      ),
      child: new Scaffold(
        backgroundColor: Colors.transparent,
        appBar: getAppBar(),
        body: Container(
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children: <Widget>[
                Stack(
                    alignment: Alignment.bottomRight,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      SizedBox(
                        width: 200.0,
                        height: 500.0,
                        child: Container(
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                        height: 100.0,
                        child: Container(color: Colors.green),
                      ),
                      Text("Test"),
                      Positioned(
                        top: 30.0,
                        left: 20.0,
                        right: 70.0,
                        bottom: 30,
                        child: Container(
                          color: Colors.pink,
                          child: new TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: new InputDecoration(
                              hintText: 'Type something',
                            ),
                          ),
                        ),
                      )
                    ]),
                ImageRippleView(
                  image: Image.asset(
                    "assets/images/ic_share.png",
                    height: 24,
                    width: 24,
                  ),
                  splashColor: Colors.red,
                  onPressed: () {
                    print("666");
                  },
                ),
//                SizedBox(
//                  width: 200.0,
//                  height: 500.0,
//                  child: Container(
//                    color: Colors.blue,
//                  ),
//                ),
//                Positioned(
//                  top: 30.0,
//                  left: 20.0,
//                  right: 70.0,
//                  bottom: 60,
//                  child: Container(
//                      alignment: Alignment.center,
//                      color: Colors.deepPurpleAccent,
//                      child: Text("asdasdasd")),
//                ),
//                Positioned(
//                  top: 20,
//                  right: 100,
//                  left: 10,
//                  bottom: 20,
//                  child: MyMaterialView(
//                    backgroundColor: Colors.red,
//                    radius: 30,
//                    padding: 10,
//                    onPressed: () {
//                      Navigator.pushNamed(context, '/c');
//                    },
//                    child: Container(
//                      alignment: Alignment.center,
//                      child: Text(
//                        "MyMaterialView",
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                  ),
//                ),
//                Positioned(
//                  top: 10,
//                  right: 100,
//                  left: 100,
//                  bottom: 500,
//                  child: MyMaterialView(
//                    backgroundColor: Colors.amber,
//                    radius: 30,
//                    padding: 10,
//                    onPressed: () {
////                      Navigator.pushNamed(context, '/c');
//                    },
//                    child: Container(
//                      alignment: Alignment.center,
//                      child: Text(
//                        "測試theme",
//                        style: Theme.of(context).textTheme.body1,
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                  ),
//                ),
//                Row(
//                  children: <Widget>[
//                    Expanded(
//                      child: MyAttrView(
//                        text: "aaaaa",
//                        backgroundColor: Colors.amberAccent,
//                      ),
//                    ),
//                    Expanded(
//                      child: MyAttrView(
//                        text: "bbbb",
//                        backgroundColor: Colors.white,
//                      ),
//                    )
//                  ],
//                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  getAppBar() {
    return BaseAppBar(
      context,
      backgroundColor: Colors.transparent,
      isCenterTitle: true,
      titleText: "TestActivity",
      iconHighlightColor: Colors.blue,
      leftIconTint: Colors.white,
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
