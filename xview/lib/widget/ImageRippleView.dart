import 'package:flutter/material.dart';

class ImageRippleView extends StatelessWidget {
  final Image image;
  final VoidCallback onPressed;

  final double radius;
  final double radiusTopRight;
  final double radiusTopLeft;
  final double radiusBottomRight;
  final double radiusBottomLeft;

  final Color splashColor;
  final Color highlightColor;

  final EdgeInsetsGeometry padding;

  final bool showRipple;

  ImageRippleView({
    Key key,
    @required this.image,
    this.radius = 0,
    this.radiusTopRight = 0,
    this.radiusTopLeft = 0,
    this.radiusBottomRight = 0,
    this.radiusBottomLeft = 0,
    this.showRipple = true,
    this.onPressed,
    this.splashColor = Colors.black12,
    this.highlightColor = Colors.black12,
    this.padding = const EdgeInsets.all(0),
  })  : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: setShape(),
      child: new Stack(children: <Widget>[
        Container(
          child: image,
          padding: padding,
        ),
        new Positioned.fill(
          child: new FlatButton(
            child: null,
            color: Colors.transparent,
            splashColor: showRipple ? splashColor : Colors.transparent,
            highlightColor: showRipple ? highlightColor : Colors.transparent,
            onPressed: onPressed ?? () {},
          ),
        ),
      ]),
    );
  }

  setShape() {
    return radius > 0
        ? BorderRadius.circular(radius)
        : BorderRadius.only(
            topLeft: Radius.circular(radiusTopLeft),
            topRight: Radius.circular(radiusTopRight),
            bottomLeft: Radius.circular(radiusBottomLeft),
            bottomRight: Radius.circular(radiusBottomRight),
          );
  }
}
