import 'package:flutter/material.dart';
import 'package:xview/widget/MyMaterialView.dart';

//.toDouble()
class ExtendView extends MyMaterialView {
  ExtendView({
    imgFileLeft = "",
    imgFileTop = "",
    imgFileRight = "",
    imgFileBottom = "",
    imgWidth = 18,
    imgHeight = 18,
    imgTint,
    text,
    textSize = 14,
    textColor,
    iconMargin = 0,
    iconMarginLeft = 0,
    iconMarginTop = 0,
    iconMarginRight = 0,
    iconMarginBottom = 0,
    backgroundColor = Colors.transparent,
    onPressed,
    padding = 0,
    paddingLeft = 0,
    paddingTop = 0,
    paddingRight = 0,
    paddingBottom = 0,
    margin = 0,
    marginLeft = 0,
    marginTop = 0,
    marginRight = 0,
    marginBottom = 0,
    radius = 0,
    radiusTopLeft = 0,
    radiusTopRight = 0,
    radiusBottomLeft = 0,
    radiusBottomRight = 0,
    elevation = 0,
    shadowColor,
    splashColor,
    highlightColor,
  }) : super(
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
                    margin: iconMargin != 0
                        ? EdgeInsets.all(iconMargin)
                        : EdgeInsets.only(
                            top: iconMarginTop,
                            right: iconMarginRight,
                            left: iconMarginLeft,
                            bottom: iconMarginBottom),
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
        );
}
