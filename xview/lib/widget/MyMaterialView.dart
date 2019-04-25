import 'package:flutter/material.dart';

///包含margin、padding、點擊事件、水波紋、圓角、外框線
class MyMaterialView extends StatelessWidget {
  final Color backgroundColor; //背景色
  final GestureTapCallback onPressed; //點擊事件
  final Widget child;

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

  final double borderWidth;
  final Color borderColor;

  final double radius; //外框圓角
  final double radiusTopLeft;
  final double radiusTopRight;
  final double radiusBottomLeft;
  final double radiusBottomRight;

  final double elevation; //陰影
  final Color shadowColor; //陰影顏色
  final Color splashColor; //水波紋顏色
  final Color highlightColor; //點擊時顏色

  const MyMaterialView({
    Key key,
    this.backgroundColor = Colors.transparent,
    this.onPressed,
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
    this.borderWidth = 0,
    this.borderColor = Colors.black,
    this.radius = 0,
    this.radiusTopLeft = 0,
    this.radiusTopRight = 0,
    this.radiusBottomLeft = 0,
    this.radiusBottomRight = 0,
    this.elevation = 0,
    this.shadowColor = Colors.black,
    this.splashColor,
    this.highlightColor,
    this.child,
  })  : assert(child != null),
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
          child: InkWell(
            highlightColor: highlightColor,
            splashColor: splashColor,
            onTap: onPressed,
            customBorder: _setShape(),
            child: Container(
              padding: _setChildPadding(),
              child: child,
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
    return radius != 0
        ? BorderRadius.circular(radius)
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
}
