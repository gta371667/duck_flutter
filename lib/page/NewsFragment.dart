import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:duck_flutter/httpAPI.dart';
import 'package:duck_flutter/widget/base/BaseState.dart';
import 'package:duck_flutter/widget/base/BaseStatefulWidget.dart';

class NewsFragment extends BaseStatefulWidget {
  final String title;

  NewsFragment(this.title) {
    print('NewsFragment constructor');
  }

  @override
  State<StatefulWidget> putState() {
    return new _NewsFragmentState();
  }
}

class _NewsFragmentState extends BaseState<NewsFragment> {
  String apiString;

  Response response;

  String uuu = "http://gank.io/api/data/%E7%A6%8F%E5%88%A9/10/1";

  @override
  void initState() {
    super.initState();
  }

  void getHttp() async {
    try {
//      response = await getDio().get(uuu);
      response = await dio.get("http://gank.io/api/data", queryParameters: {
        "id": 12,
        "name"
            "": "wendu"
      });
      return print(response);
    } catch (e) {
      return print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return showCustomScrollView();

//    return new Scaffold(
////      appBar: AppBar(
////        textTheme: TextTheme(title: TextStyle(color: Colors.yellow),),
////        title: new Text(this.widget.title),
////        backgroundColor: Colors.brown,
////      ),
//      appBar: BaseAppBar(
//        text: "asdasd",
//        leftIcon: "assets/images/ic_home1.png",
//      ),
//      backgroundColor: Colors.red,
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new Image.asset(
//              "assets/images/ic_home2.png",
//              height: 60,
//            ),
//            MaterialButton(
//              onPressed: () {},
//              child: Text('Hello'),
//              color: Color.fromARGB(55, 250, 80, 80),
//              padding:
//                  EdgeInsets.only(left: 10.0, right: 10.0, top: 20, bottom: 50),
//            ),
//            Text(
//              '123123:',
//              style: TextStyle(
//                  color: Color.fromARGB(55, 250, 80, 80),
//                  fontSize: 50,
//                  fontWeight: FontWeight.bold),
//            ),
//            Text(
//              '$apiString',
//              style: Theme.of(context).textTheme.display1,
//            ),
//            new Row(
//              children: <Widget>[
//                new Image.asset('assets/images/flutter-mark-square-64.png',
//                    scale: 1.5),
//                const Text(
//                  'Flutter',
//                  style: const TextStyle(
//                      fontSize: 30.0, color: const Color(ColorRes.c599bff)),
//                ),
//              ],
//            )
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          setState(() {
//            apiString = "";
//          });
//
//          getNewsListAPI().then((newsArray) {
//            setState(() {
//              apiString = newsArray.length.toString();
//            });
//          });
//        },
//        backgroundColor: Colors.amberAccent,
//        child: Text('button'),
//      ),
//    );
  }
}

Widget showCustomScrollView() {
  return new CustomScrollView(
    slivers: <Widget>[
      SliverAppBar(
        pinned: true,
        floating: true,
        forceElevated: true,
        title: new Text("6666"),
        expandedHeight: 150.0,
        flexibleSpace: FlexibleSpaceBar(
          title: const Text(
            'Demo',
            style: TextStyle(color: Colors.red),
          ),
          centerTitle: true,
          background: new Container(
            child: Image.asset(
              "assets/images/ic_slider.png",
            ),
          ),
        ),
        leading: new IconButton(
            icon: Image.asset(
              "assets/images/ic_arrow_back.png",
              color: Colors.white,
              height: 20,
              width: 20,
            ),
            tooltip: '長按提示字',
            highlightColor: Colors.yellow,
            //長按時背景顏色
            splashColor: Colors.deepPurple,
            //點擊時背景色
            onPressed: () {
              print("title IconButton");
            }),
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
          new Container(
            child: new IconButton(
                icon: Image.asset(
                  'assets/images/ic_home2.png',
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
          new Container(
            child: new IconButton(
                icon: Image.asset(
                  'assets/images/ic_home1.png',
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
      ),
      new SliverGrid(
        gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
        ),
        delegate: new SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return new Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: new Text('grid item $index'),
            );
          },
          childCount: 20,
        ),
      ),
      new SliverFixedExtentList(
        itemExtent: 50.0,
        delegate: new SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return new Container(
              alignment: Alignment.center,
              color: Colors.lightBlue[100 * (index % 9)],
              child: new Text('list item $index'),
            );
          },
        ),
      ),
    ],
  );
}
