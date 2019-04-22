import 'package:flutter/material.dart';

class BaseStatelessWidget extends StatelessWidget {
  final Widget child;

  final num margin;
  final num marginLeft;
  final num marginTop;
  final num marginRight;
  final num marginBottom;
  final num padding;
  final num paddingLeft;
  final num paddingTop;
  final num paddingRight;
  final num paddingBottom;

  final Alignment alignment;

  BaseStatelessWidget({
    Key key,
    this.child,
    this.margin,
    this.marginLeft,
    this.marginTop,
    this.marginRight,
    this.marginBottom,
    this.padding,
    this.paddingLeft,
    this.paddingTop,
    this.paddingRight,
    this.paddingBottom,
    this.alignment: Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: _setMargin(),
      padding: _setPadding(),
      alignment: alignment,
      child: child,
    );
  }

  _setMargin() {
    return margin > 0.0
        ? EdgeInsets.all(margin.toDouble())
        : EdgeInsets.only(
            left: marginLeft.toDouble(),
            top: marginTop.toDouble(),
            right: marginRight.toDouble(),
            bottom: marginBottom.toDouble());
  }

  _setPadding() {
    return padding > 0.0
        ? EdgeInsets.all(padding.toDouble())
        : EdgeInsets.only(
            left: paddingLeft.toDouble(),
            top: paddingTop.toDouble(),
            right: marginRight.toDouble(),
            bottom: marginBottom.toDouble());
  }
}
