import 'package:flutter/material.dart';
import 'package:duck_flutter/widget/base/BaseStatelessWidget.dart';

class IconRippleView2 extends BaseStatelessWidget {
  final Image image;
  final double radius;

  IconRippleView2({
    @required this.image,
    this.radius,
    margin = 0.0,
    marginLeft = 0,
    marginTop = 0,
    marginRight = 0,
    marginBottom = 0,
    padding = 0,
    paddingLeft = 0,
    paddingTop = 0,
    paddingRight = 0,
    paddingBottom = 0,
    alignment,
  }) : super(
            margin: margin,
            marginLeft: marginLeft,
            marginRight: marginRight,
            marginTop: marginTop,
            marginBottom: marginBottom,
            padding: padding,
            paddingLeft: paddingLeft,
            paddingRight: paddingRight,
            paddingTop: paddingTop,
            paddingBottom: paddingBottom,
            child: new Stack(children: <Widget>[
              image,
              new Positioned.fill(
                  child: new FlatButton(
                shape: radius > 0
                    ? RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(radius)))
                    : RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(radius))),
                child: null,
                color: Colors.transparent,
                onPressed: () {},
              )),
            ]));
}
