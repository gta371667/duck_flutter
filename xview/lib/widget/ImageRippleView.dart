import 'package:flutter/material.dart';

class ImageRippleView extends StatelessWidget {
  final Image image;
  final VoidCallback onPressed;

  final Color splashColor;
  final Color highlightColor;

  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;

  final bool showRipple;

  ImageRippleView({
    Key key,
    @required this.image,
    this.showRipple = true,
    this.onPressed,
    this.splashColor = Colors.black12,
    this.highlightColor = Colors.black12,
    this.padding = const EdgeInsets.all(0),
    this.borderRadius,
  })  : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: setShape(),
      child: new Stack(
        children: <Widget>[
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
        ],
      ),
    );
  }

  setShape() {
    return borderRadius ?? BorderRadius.circular(0);
  }
}
