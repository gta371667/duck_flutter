import 'package:duck_flutter/adapter/DrawerAdapter.dart';
import 'package:duck_flutter/model/DrawerModel.dart';
import 'package:duck_flutter/page/FavoriteFragment.dart';
import 'package:duck_flutter/page/HomeFragment.dart';
import 'package:duck_flutter/page/LinkFragment.dart';
import 'package:duck_flutter/page/NewsFragment.dart';
import 'package:duck_flutter/res/ColorRes.dart';
import 'package:duck_flutter/widget/base/BaseStatefulWidget.dart';
import 'package:flutter/material.dart';
import 'package:xview/tools/ToolsPhonePixel.dart';

/// [DrawerAdapter]
class MainActivity extends BaseStatefulWidget {
  @override
  State<StatefulWidget> putState() {
    return _MainActivityState();
  }
}

class _MainActivityState extends State<MainActivity> implements DrawerOnClick {
  final textSelectColor = Colors.redAccent;
  final iconSelectColor = Colors.redAccent;

  final textDefaultColor = Colors.black;
  final iconDefaultColor = Colors.black;

  int _selectIndex = 0; //選擇第幾頁
  var fragmentArray = <Widget>[]; //儲存頁面，防止每次重新createState()
//  List<Widget> list = new List();

  List<DrawerModel> drawerModel = new List();

  @override
  void initState() {
    fragmentArray
      ..add(HomeFragment())
      ..add(NewsFragment("cccc"))
      ..add(FavoriteFragment())
      ..add(LinkFragment());
    super.initState();

    drawerModel.clear();

    drawerModel.add(DrawerModel(0, "首頁", 'assets/images/ic_menu_home_c.png',
        'assets/images/ic_menu_home.png', true));
    drawerModel.add(DrawerModel(0, "新聞", 'assets/images/ic_menu_news_c.png',
        'assets/images/ic_menu_news.png', false));
    drawerModel.add(DrawerModel(0, "行情", 'assets/images/ic_menu_info_c.png',
        'assets/images/ic_menu_info.png', false));
    drawerModel.add(DrawerModel(0, "貼吧", 'assets/images/ic_menu_bar_c.png',
        'assets/images/ic_menu_bar.png', false));
    drawerModel.add(DrawerModel(0, "設定", 'assets/images/ic_menu_setting_c.png',
        'assets/images/ic_menu_setting.png', false));
    drawerModel.add(DrawerModel(0, "連結", 'assets/images/ic_menu_link_c.png',
        'assets/images/ic_menu_link.png', false));
    drawerModel.add(DrawerModel(0, "掃描", 'assets/images/ic_menu_qrcode_c.png',
        'assets/images/ic_menu_qrcode.png', false));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: initDrawer(),
      backgroundColor: Colors.blue,
//      body: list[_selectIndex],
      body: Stack(
        children: <Widget>[
          _buildPage(0),
          _buildPage(1),
          _buildPage(2),
          _buildPage(3),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/flutter-mark-square-64.png",
                color: Colors.black,
                height: 25,
                width: 25,
              ),
              activeIcon: Image.asset(
                "assets/images/flutter-mark-square-64.png",
                height: 25,
                width: 25,
                color: Colors.red,
              ),
              title: Text(
                '首頁',
                style: TextStyle(
                  color: _selectIndex == 0
                      ? Color(ColorRes.bottom_text_click)
                      : Color(ColorRes.bottom_text_default),
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _selectIndex == 1 ? iconSelectColor : iconDefaultColor,
              ),
              title: new Text(
                "新聞",
                style: TextStyle(
                  color: _selectIndex == 1
                      ? Color(ColorRes.bottom_text_click)
                      : Color(ColorRes.bottom_text_default),
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _selectIndex == 2
                    ? Color(ColorRes.bottom_text_click)
                    : Color(ColorRes.bottom_text_default),
              ),
              title: new Text(
                "收藏",
                style: TextStyle(
                  color: _selectIndex == 2
                      ? Color(ColorRes.bottom_text_click)
                      : Color(ColorRes.bottom_text_default),
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _selectIndex == 3
                    ? Color(ColorRes.bottom_text_click)
                    : Color(ColorRes.bottom_text_default),
              ),
              title: new Text(
                "連結",
                style: TextStyle(
                  color: _selectIndex == 3
                      ? Color(ColorRes.bottom_text_click)
                      : Color(ColorRes.bottom_text_default),
                ),
              )),
        ],
        currentIndex: _selectIndex,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 30.0,
      ),
    );
  }

  Widget _buildPage(int index) {
    return Offstage(
        offstage: this._selectIndex != index,
        child: TickerMode(
            enabled: this._selectIndex == index, child: fragmentArray[index]));
  }

  initDrawer() {
    return Container(
      width: ToolsPhonePixel.getPixelWidth(context) * 0.7,
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: ToolsPhonePixel.getStatusBarHeight(context)),
          ),
          Container(
            alignment: Alignment.centerRight, //對齊
            margin: EdgeInsets.all(20),
            child: Image.asset(
              "assets/images/ic_close_menu.png",
              width: 30,
              height: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            constraints: BoxConstraints(maxHeight: 500),
            child: ListView.builder(
                itemCount: drawerModel.length,
                padding: EdgeInsets.all(0),
                itemBuilder: (BuildContext context, int position) {
                  return DrawerAdapter(position, drawerModel[position], this);
                }),
          ),
        ],
      ),
    );
  }

  @override
  void onDrawerOnClick(int position, DrawerModel adapterItem) {
    setState(() {
      drawerModel.forEach((c) => c.isSelect = false);
      drawerModel[position].isSelect = true;
      print('$position ${adapterItem.text}');
    });
  }
}
