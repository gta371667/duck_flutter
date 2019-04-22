import 'package:flutter/material.dart';
import 'package:duck_flutter/model/DrawerModel.dart';
import 'package:duck_flutter/res/ColorRes.dart';
import 'package:duck_flutter/widget/MyMaterialView.dart';

//側選單列表
class DrawerAdapter extends StatelessWidget {
  DrawerAdapter(this.position, this.data, this.drawerOnClick);

  final int position;
  final DrawerModel data;
  final DrawerOnClick drawerOnClick;

  @override
  Widget build(BuildContext context) {
    return MyMaterialView(
      backgroundColor: data.isSelect
          ? Color(ColorRes.bottom_bg_click)
          : Color(ColorRes.bottom_bg_default),
      onTap: () {
        drawerOnClick.onDrawerOnClick(position, data);
      },
      paddingTop: 15,
      paddingBottom: 15,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            data.isSelect ? data.drawableRes_c : data.drawableRes_d,
            width: 30,
            height: 30,
          ),
          Container(
              margin: EdgeInsets.only(left: 25),
              child: Text(
                data.text,
                style: TextStyle(fontSize: 16),
              )),
        ],
      ),
    );
  }
}

abstract class DrawerOnClick {
  void onDrawerOnClick(int position, DrawerModel adapterItem);
}
