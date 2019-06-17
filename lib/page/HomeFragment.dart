import 'package:duck_flutter/adapter/HomeNewsAdapter.dart';
import 'package:duck_flutter/adapter/IconAdapter.dart';
import 'package:duck_flutter/httpAPI.dart';
import 'package:duck_flutter/model/IconModel.dart';
import 'package:duck_flutter/model/NewsModel.dart';
import 'package:duck_flutter/widget/BaseAppBar.dart';
import 'package:duck_flutter/widget/base/BaseStatefulWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xview/widget/ImageRippleView.dart';

class HomeFragment extends BaseStatefulWidget {
  final List<Contentlist> _newsData = new List();

  final List<String> strings = new List();

  @override
  State<StatefulWidget> putState() {
    return HomeState(_newsData);
  }
}

class HomeState extends State<HomeFragment> {
  List<Contentlist> _newsData = new List();
  bool isError = false;

  HomeState(this._newsData);

  @override
  void initState() {
    super.initState();
    _refreshNews();
  }

  Future<Null> _refreshNews() async {
    setState(() {
      isError = false;
      _newsData.clear();
    });

    getNewsListAPI().then((arrayData) {
      setState(() {
        _newsData.clear();

        isError = arrayData == null ? true : false;
        _newsData.addAll(isError ? new List() : arrayData);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(),
      floatingActionButton: initFloatingActionButton(),
      body: new Column(
        children: <Widget>[
          Image.asset(
            "assets/images/ic_slider.png",
          ),
          testIcon(),
          Container(
            color: const Color(0xfff5f5f5),
            height: 20,
          ),
          Expanded(
            child: initNewsList(),
          )
        ],
      ),
    );
  }

  getAppBar() {
    return BaseAppBar(
      context,
      titleText: "首頁",
      leftIcon: 'assets/images/ic_close_menu.png',
      actions: <Widget>[
        new Container(
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
          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
        ),
      ],
    );
  }

  initFloatingActionButton() {
    return FloatingActionButton(
      highlightElevation: 1,
      elevation: 10,
      clipBehavior: Clip.none,
      foregroundColor: Colors.red,
      onPressed: () {
//        _refreshNews();
      },
      backgroundColor: Colors.amberAccent,
      child: Text("6666"),
    );
  }

  initNewsList() {
    if (isError) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: new Text(
              "error",
              textScaleFactor: 1.2,
            ),
          )
        ],
      );
    } else {
      if (_newsData.length == 0) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoActivityIndicator(
              radius: 15,
              animating: true,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: new Text(
                "修蛋幾ㄟ",
                textScaleFactor: 1.2,
              ),
            )
          ],
        );
      } else {
        return ListView.builder(
            itemCount: _newsData.length,
            itemBuilder: (BuildContext context, int position) {
              return HomeNewsAdapter(position, _newsData[position]);
            });
      }
    }
  }

  testIcon() {
    List<IconModel> _iconArray = new List();
    _iconArray.add(
        new IconModel(IconType.Home, "Sub1", "assets/images/ic_home1.png"));
    _iconArray.add(
        new IconModel(IconType.Home, "Sub2", "assets/images/ic_home2.png"));
    _iconArray.add(
        new IconModel(IconType.Home, "Sub3", "assets/images/ic_home3.png"));
    _iconArray.add(
        new IconModel(IconType.Home, "Sub4", "assets/images/ic_home4.png"));

    return Container(
      margin: EdgeInsets.only(left: 5, right: 10),
      child: GridView.builder(
        itemCount: _iconArray.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _iconArray.length),
        itemBuilder: (BuildContext context, int position) {
          return IconAdapter(position, _iconArray[position]);
        },
      ),
    );
  }
}
