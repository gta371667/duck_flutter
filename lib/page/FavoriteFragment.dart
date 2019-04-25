import 'package:duck_flutter/adapter/IconAdapter.dart';
import 'package:duck_flutter/model/IconModel.dart';
import 'package:xview/widget/MyMaterialView.dart';
import 'package:flutter/material.dart';
import 'package:xview/xview.dart';

class FavoriteFragment extends StatelessWidget {
  List<IconModel> getArray() {
    List<IconModel> _iconArray = new List();
    _iconArray.add(
        new IconModel(IconType.Home, "Sub1", "assets/images/ic_home1.png"));
    _iconArray.add(
        new IconModel(IconType.Home, "Sub2", "assets/images/ic_home2.png"));
    _iconArray.add(
        new IconModel(IconType.Home, "Sub3", "assets/images/ic_home3.png"));
    _iconArray.add(
        new IconModel(IconType.Home, "Sub4", "assets/images/ic_home4.png"));
    return _iconArray;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Favorite'),
        ),
        body: new Container(
          color: Colors.black,
          child: new Column(
            children: <Widget>[
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: getArray().length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: getArray().length),
                  itemBuilder: (BuildContext context, int position) {
                    return IconAdapter(position, getArray()[position]);
                  }),
              Row(
                children: <Widget>[
                  Container(
                      color: Colors.deepPurpleAccent,
                      height: 60,
                      child: ImageRippleView(
                          image:
                              new Image.asset('assets/images/ic_home1.png'))),
                  new Container(
                    alignment: Alignment.centerRight, //對齊
                    child: MyAttrView(
                      text: "123",
                      textColor: Colors.blue,
                      iconMargin: 3,
                      margin: 10,
                      padding: 10,
                      textSize: 20,
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      borderColor: Colors.cyan,
                      borderWidth: 1,
                      radiusBottomLeft: 10,
                      radiusBottomRight: 50,
                      radiusTopLeft: 50,
                      radiusTopRight: 10,
                      imgFileLeft: "assets/images/ic_home1.png",
                      imgFileTop: "assets/images/ic_home2.png",
                      imgFileRight: "assets/images/ic_home3.png",
                      imgFileBottom: "assets/images/ic_home4.png",
                      onPressed: () {
                        print("1236666666");
                      },
                    ),
                  ),
                ],
              ),
              new Container(
                alignment: Alignment.centerRight, //對齊
                child: MyAttrView(
                  text: "asdad",
                  textColor: Colors.blue,
                  iconMargin: 5,
                  margin: 5,
                  padding: 10,
                  textSize: 20,
                  elevation: 5,
                  shadowColor: Colors.red,
                  backgroundColor: Colors.deepOrange,
                  borderColor: Colors.cyan,
                  borderWidth: 1,
                  imgWidth: 20,
                  imgHeight: 20,
                  radiusBottomLeft: 5,
                  radiusBottomRight: 5,
                  radiusTopLeft: 5,
                  radiusTopRight: 5,
                  imgFileLeft: "assets/images/ic_home1.png",
                  imgFileTop: "assets/images/ic_home2.png",
                  imgFileRight: "assets/images/ic_home3.png",
                  imgFileBottom: "assets/images/ic_home4.png",
                  onPressed: () {
                    print("1236666666");
                  },
                ),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(new Radius.circular(3)),
                    side: BorderSide(width: 1, color: Colors.yellow)),
                color: Colors.red,
                child: Text("12313"),
                margin: EdgeInsets.only(top: 10),
              ),
              MyMaterialView(
                margin: 5,
                padding: 5,
                backgroundColor: Colors.green,
                borderColor: Colors.cyan,
                borderWidth: 1,
                radius: 30,
                onPressed: () {},
                splashColor: Colors.deepPurple,
                child: Text(
                  "121313",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              new Container(
                alignment: Alignment.centerRight, //對齊
                child: MyAttrView(
                  text: "asdad",
                  textColor: Colors.white,
                  iconMargin: 10,
                  padding: 10,
                  margin: 5,
                  textSize: 20,
                  elevation: 5,
                  shadowColor: Colors.white,
                  backgroundColor: Colors.deepOrange,
                  borderColor: Colors.cyan,
                  borderWidth: 1,
                  imgWidth: 50,
                  imgHeight: 50,
                  radius: 30,
                  imgFileLeft: "assets/images/ic_home1.png",
                  imgFileTop: "assets/images/ic_home2.png",
                  imgFileRight: "assets/images/ic_home3.png",
                  imgFileBottom: "assets/images/ic_home4.png",
                  onPressed: () {
                    print("1236666666");
                  },
                  splashColor: Colors.brown,
                  highlightColor: Colors.deepPurpleAccent,
                ),
              ),
            ],
          ),
        ));
  }
}
