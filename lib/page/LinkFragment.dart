import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:duck_flutter/model/GirlModel.dart';
import 'package:duck_flutter/widget/base/BaseState.dart';
import 'package:duck_flutter/widget/base/BaseStatefulWidget.dart';
import 'package:duck_flutter/httpAPI.dart';

class LinkFragment extends BaseStatefulWidget {
  @override
  State<StatefulWidget> putState() {
    return _LinkState();
  }
}

class _LinkState extends BaseState<LinkFragment> {
  List<GirlData> data = new List();

  Future<Null> _getAPI() async {
    setState(() {
      data.clear();
    });

    getGirlArray().then((array) {
      setState(() {
        data.clear();
        data.addAll(array);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getAPI();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("美女"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: RefreshIndicator(child: initListView(), onRefresh: _getAPI),
        ));
  }

  funA() {
    return true;
  }

  //listView相關UI
  initListView() {
    if (data.length != 0) {
      return ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int position) {
            return _ItemXML(data[position]);
          });
    } else {
      // 加载菊花
      return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
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
          ]);
    }
  }
}

//listView itemView
class _ItemXML extends StatefulWidget {
  const _ItemXML(this.data);

  final GirlData data;

  @override
  State<StatefulWidget> createState() {
    return ItemImageState(data);
  }
}

class ItemImageState extends State<_ItemXML> {
  ItemImageState(this.data);

  final GirlData data;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.red,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(new Radius.circular(5)),
            side: BorderSide(color: Colors.red, width: 1)),
        child: Material(
          child: Ink(
            height: 150,
            child: InkWell(
              onTap: () {
                print("水波倫哩");
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: new Container(
                      alignment: Alignment.center,
                      child: Image.network(
                        data.url,
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(data.who),
                    ),
                    flex: 5,
                  ),
                  Expanded(
                    child: Text(data.publishedAt),
                    flex: 5,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

//點擊展開
class ItemExpansionState extends State<_ItemXML> {
  ItemExpansionState(this.data);

  final GirlData data;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      children: <Widget>[
        Image.network(
          data.url,
          fit: BoxFit.contain,
          height: 100,
          width: 100,
        )
      ],
      backgroundColor: Colors.red,
      key: PageStorageKey<GirlData>(data),
      title: Text(data.createdAt),
    );
  }
}
