import 'package:flutter/material.dart';

class IconRippleView extends StatelessWidget {
  final Image image;
  final double radius;
  final double margin;

  IconRippleView(
    this.image, {
    Key key,
    this.radius = 0,
    this.margin = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.all(margin),
        alignment: Alignment.center,
        child: new Stack(children: <Widget>[
          image,
          new Positioned.fill(
              child: new FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius))),
            child: null,
            color: Colors.transparent,
            onPressed: () {},
          )),
        ]));
  }
}
