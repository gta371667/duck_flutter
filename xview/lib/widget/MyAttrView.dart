import 'package:flutter/material.dart';
import 'package:xview/widget/MyMaterialView.dart';

class MyAttrView extends StatelessWidget {
  final String imgFileLeft; //圖片名稱 ex:assets/image/ic_home.png
  final String imgFileTop;
  final String imgFileRight;
  final String imgFileBottom;

  final double imgWidth;
  final double imgHeight;
  final Color imgTint; //圖片繪製顏色

  final String text;
  final double textSize;
  final Color textColor;

  final Color backgroundColor; //背景色
  final GestureTapCallback onPressed; //點擊事件

  final EdgeInsetsGeometry iconMargin;
  final EdgeInsetsGeometry padding; //內部padding
  final EdgeInsetsGeometry margin; //父margin
  final BorderRadiusGeometry radius; //外框圓角

  final double elevation; //陰影大小
  final Color shadowColor; //陰影顏色
  final Color splashColor; //水波紋顏色
  final Color highlightColor; //點擊時顏色

  final double borderWidth;
  final Color borderColor;

  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  const MyAttrView({
    Key key,
    this.imgFileLeft = "",
    this.imgFileTop = "",
    this.imgFileRight = "",
    this.imgFileBottom = "",
    this.imgWidth = 18,
    this.imgHeight = 18,
    this.imgTint,
    @required this.text,
    this.textSize = 14,
    this.textColor,
    this.backgroundColor = Colors.transparent,
    this.onPressed,
    this.padding,
    this.margin,
    this.radius,
    this.elevation = 0,
    this.shadowColor = Colors.black,
    this.splashColor = Colors.black12,
    this.highlightColor = Colors.black12,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.iconMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyMaterialView(
      backgroundColor: backgroundColor,
      onPressed: onPressed,
      padding: padding,
      margin: margin,
      radius: radius,
      elevation: elevation,
      shadowColor: shadowColor,
      splashColor: splashColor,
      highlightColor: highlightColor,
      borderColor: borderColor,
      borderWidth: borderWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: crossAxisAlignment,
        children: <Widget>[
          //上icon
          Offstage(
            offstage: imgFileTop.isEmpty,
            child: buildImage(imgFileTop),
          ),
          new Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: mainAxisAlignment,
            children: <Widget>[
              //左icon
              Offstage(
                offstage: imgFileLeft.isEmpty,
                child: buildImage(imgFileLeft),
              ),
              new Container(
                margin: _setIconMargin(),
                child: Text(
                  text,
                  style: TextStyle(color: textColor, fontSize: textSize),
                ),
              ),
              //右icon
              Offstage(
                offstage: imgFileRight.isEmpty,
                child: buildImage(imgFileRight),
              ),
            ],
          ),
          //下icon
          Offstage(
            offstage: imgFileBottom.isEmpty,
            child: buildImage(imgFileBottom),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String path) {
    if (path.isEmpty) return Container();

    return Image.asset(
      path,
      width: imgWidth,
      height: imgHeight,
      color: imgTint,
    );
  }

  _setIconMargin() {
    return iconMargin ?? EdgeInsets.all(0);
  }
}
