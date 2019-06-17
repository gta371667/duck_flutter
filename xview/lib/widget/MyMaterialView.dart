import 'package:flutter/material.dart';

///包含margin、padding、點擊事件、水波紋、圓角、外框線
class MyMaterialView extends StatelessWidget {
  final Color backgroundColor; //背景色
  final GestureTapCallback onPressed; //點擊事件
  final Widget child;

  final EdgeInsetsGeometry margin; //父margin
  final EdgeInsetsGeometry padding; //內部padding
  final BorderRadiusGeometry radius; //外框圓角

  final double borderWidth;
  final Color borderColor;

  final double elevation; //陰影
  final Color shadowColor; //陰影顏色
  final Color splashColor; //水波紋顏色
  final Color highlightColor; //點擊時顏色

  final AlignmentGeometry alignment;

  const MyMaterialView({
    Key key,
    this.backgroundColor = Colors.transparent,
    this.onPressed,
    this.margin,
    this.padding,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    this.radius,
    this.elevation = 0,
    this.shadowColor = Colors.black,
    this.splashColor = Colors.black12,
    this.highlightColor = Colors.black12,
    this.child,
    this.alignment,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: alignment,
      margin: _setParentMargin(), //全局margin
      child: new Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: backgroundColor,
        shape: _setShape(),
        elevation: elevation,
        shadowColor: shadowColor,
        child: InkWell(
          splashColor: splashColor,
          highlightColor: highlightColor,
          onTap: onPressed,
          child: Container(
            padding: _setChildPadding(),
            child: child,
          ),
        ),
      ),
    );
  }

  _setShape() {
    return new RoundedRectangleBorder(
      side: BorderSide(width: borderWidth, color: borderColor),
      borderRadius: _setBorderRadius(),
    );
  }

  _setBorderRadius() {
    return radius ?? BorderRadius.circular(0);
  }

  _setParentMargin() {
    return margin ?? EdgeInsets.all(0);
  }

  _setChildPadding() {
    return padding ?? EdgeInsets.all(0);
  }
}
