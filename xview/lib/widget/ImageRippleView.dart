import 'package:flutter/material.dart';

class ImageRippleView extends StatelessWidget {
  final Image image;

  final double radius;
  final double radiusTR;
  final double radiusTL;
  final double radiusBR;
  final double radiusBL;

  final bool showRipple;

  ImageRippleView({
    Key key,
    @required this.image,
    this.radius = 0,
    this.radiusTR = 0,
    this.radiusTL = 0,
    this.radiusBR = 0,
    this.radiusBL = 0,
    this.showRipple = true,
  })  : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: setShape(),
      child: new Stack(children: <Widget>[
        image,
        new Positioned.fill(
            child: new FlatButton(
          child: null,
          color: Colors.transparent,
          onPressed: showRipple
              ? () {
                  print("adasdadad");
                }
              : null,
        )),
      ]),
    );
  }

  setShape() {
    return radius > 0
        ? BorderRadius.circular(radius)
        : BorderRadius.only(
            topLeft: Radius.circular(radiusTL),
            topRight: Radius.circular(radiusTR),
            bottomLeft: Radius.circular(radiusBL),
            bottomRight: Radius.circular(radiusBR),
          );
  }
}
