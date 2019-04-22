import 'package:flutter/material.dart';

///包含margin、padding、點擊事件、水波紋、圓角、外框線
class MyMaterialView extends StatefulWidget {
  final Color backgroundColor; //背景色
  final GestureTapCallback onTap; //點擊事件
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

  final double radiusAll; //外框圓角
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
    this.onTap,
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
    this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyMaterialViewState();
  }
}

class _MyMaterialViewState extends State<MyMaterialView> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: _setParentMargin(), //全局margin
      child: new Material(
          color: widget.backgroundColor,
          shape: _setShape(),
          elevation: widget.elevation,
          shadowColor: widget.shadowColor,
          child: InkWell(
            highlightColor: widget.highlightColor,
            splashColor: widget.splashColor,
            onTap: widget.onTap,
            customBorder: _setShape(),
            child: Container(
              padding: _setChildPadding(),
              child: widget.child,
            ),
          )),
    );
  }

  _setShape() {
    return new RoundedRectangleBorder(
        side: BorderSide(width: widget.borderWidth, color: widget.borderColor),
        borderRadius: _setBorderRadius());
  }

  _setBorderRadius() {
    return widget.radiusAll != 0
        ? BorderRadius.circular(widget.radiusAll)
        : BorderRadius.only(
            topLeft: Radius.circular(widget.radiusTopLeft),
            topRight: Radius.circular(widget.radiusTopRight),
            bottomLeft: Radius.circular(widget.radiusBottomLeft),
            bottomRight: Radius.circular(widget.radiusBottomRight));
  }

  _setParentMargin() {
    return widget.margin != 0
        ? EdgeInsets.all(widget.margin)
        : EdgeInsets.only(
            top: widget.marginTop,
            right: widget.marginRight,
            left: widget.marginLeft,
            bottom: widget.marginBottom);
  }

  _setChildPadding() {
    return widget.padding != 0
        ? EdgeInsets.all(widget.padding)
        : EdgeInsets.only(
            top: widget.paddingTop,
            right: widget.paddingRight,
            left: widget.paddingLeft,
            bottom: widget.paddingBottom);
  }
}
