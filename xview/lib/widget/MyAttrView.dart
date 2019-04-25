import 'package:flutter/material.dart';

class MyAttrView extends StatelessWidget {
  final Color backgroundColor; //背景色
  final VoidCallback onPressed; //點擊事件

  final String text;
  final double textSize;
  final Color textColor;

  final double margin; //父margin
  final double marginLeft;
  final double marginTop;
  final double marginRight;
  final double marginBottom;

  final double padding; //內部padding
  final double paddingLeft;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;

  final String imgFileLeft; //圖片名稱 ex:assets/image/ic_home.png
  final String imgFileTop;
  final String imgFileRight;
  final String imgFileBottom;

  final double imgWidth;
  final double imgHeight;
  final Color imgTint; //圖片繪製顏色

  final double borderWidth;
  final Color borderColor;

  final double radiusAll; //外框圓角
  final double radiusTopLeft;
  final double radiusTopRight;
  final double radiusBottomLeft;
  final double radiusBottomRight;

  final double iconMargin; //icon與文字的距離
  final double iconMarginLeft;
  final double iconMarginTop;
  final double iconMarginRight;
  final double iconMarginBottom;

  final double elevation; //陰影
  final Color shadowColor; //陰影顏色
  final Color splashColor; //水波紋顏色
  final Color highlightColor; //點擊時顏色
  final Brightness colorBrightness; //水波紋亮度

  const MyAttrView({
    Key key,
    this.backgroundColor = Colors.transparent,
    this.onPressed,
    this.text,
    this.textColor,
    this.textSize = 14,
    this.margin = 0,
    this.marginLeft = 0,
    this.marginTop = 0,
    this.marginRight = 0,
    this.marginBottom = 0,
    this.padding = 0,
    this.paddingLeft = 0,
    this.paddingTop = 0,
    this.paddingRight = 0,
    this.paddingBottom = 0,
    this.imgFileLeft = "",
    this.imgFileTop = "",
    this.imgFileRight = "",
    this.imgFileBottom = "",
    this.imgWidth = 25,
    this.imgHeight = 25,
    this.imgTint,
    this.iconMargin = 0,
    this.iconMarginLeft = 0,
    this.iconMarginTop = 0,
    this.iconMarginRight = 0,
    this.iconMarginBottom = 0,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    this.radiusAll = 0,
    this.radiusTopLeft = 0,
    this.radiusTopRight = 0,
    this.radiusBottomLeft = 0,
    this.radiusBottomRight = 0,
    this.elevation = 0,
    this.shadowColor = Colors.black,
    this.splashColor,
    this.highlightColor,
    this.colorBrightness = Brightness.light,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: _setParentMargin(), //全局margin
      child: new Material(
          color: backgroundColor,
          shape: _setShape(),
          elevation: elevation,
          shadowColor: shadowColor,
          child: FlatButton(
            colorBrightness: colorBrightness,
            splashColor: splashColor,
            highlightColor: highlightColor,
            shape: _setShape(),
            //點擊事件
            onPressed: onPressed,
            //內部padding
            padding: _setChildPadding(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Offstage(
                  offstage: imgFileTop.length == 0, //上icon
                  child: Image.asset(
                    imgFileTop,
                    width: imgWidth,
                    height: imgHeight,
                    color: imgTint,
                  ),
                ),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Offstage(
                      offstage: imgFileLeft.length == 0, //左icon
                      child: Image.asset(
                        imgFileLeft,
                        width: imgWidth,
                        height: imgHeight,
                        color: imgTint,
                      ),
                    ),
                    new Container(
                      margin: _setIconMargin(),
                      child: Text(
                        text,
                        style: TextStyle(color: textColor, fontSize: textSize),
                      ),
                    ),
                    new Offstage(
                      offstage: imgFileRight.length == 0, //右icon
                      child: Image.asset(
                        imgFileRight,
                        width: imgWidth,
                        height: imgHeight,
                        color: imgTint,
                      ),
                    ),
                  ],
                ),
                new Offstage(
                  offstage: imgFileBottom.length == 0, //下icon
                  child: Image.asset(
                    imgFileBottom,
                    width: imgWidth,
                    height: imgHeight,
                    color: imgTint,
                  ),
                ),
              ],
            ),
          )),
    );
  }

  _setShape() {
    return new RoundedRectangleBorder(
        side: BorderSide(width: borderWidth, color: borderColor),
        borderRadius: _setBorderRadius());
  }

  _setBorderRadius() {
    return radiusAll != 0
        ? BorderRadius.circular(radiusAll)
        : BorderRadius.only(
            topLeft: Radius.circular(radiusTopLeft),
            topRight: Radius.circular(radiusTopRight),
            bottomLeft: Radius.circular(radiusBottomLeft),
            bottomRight: Radius.circular(radiusBottomRight));
  }

  _setParentMargin() {
    return margin != 0
        ? EdgeInsets.all(margin)
        : EdgeInsets.only(
            top: marginTop,
            right: marginRight,
            left: marginLeft,
            bottom: marginBottom);
  }

  _setChildPadding() {
    return padding != 0
        ? EdgeInsets.all(padding)
        : EdgeInsets.only(
            top: paddingTop,
            right: paddingRight,
            left: paddingLeft,
            bottom: paddingBottom);
  }

  _setIconMargin() {
    return iconMargin != 0
        ? EdgeInsets.all(iconMargin)
        : EdgeInsets.only(
            top: iconMarginTop,
            right: iconMarginRight,
            left: iconMarginLeft,
            bottom: iconMarginBottom);
  }
}
