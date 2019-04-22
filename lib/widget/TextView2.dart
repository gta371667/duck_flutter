import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:duck_flutter/widget/MyMaterialView.dart';

///待解決
///原想繼承MyMaterialView，然後內部實現child，目前無法實現child
///另外@required margin 強制從外部輸入double，否則輸入int會crash

class TextView2 extends MyMaterialView {
  final VoidCallback onTap; //點擊事件

  final String text;
  final double textSize;
  final Color textColor;

  final String imgFileLeft; //圖片名稱 ex:ic_home.png
  final String imgFileTop;
  final String imgFileRight;
  final String imgFileBottom;

  final double imgWidth;
  final double imgHeight;
  final Color imgTint; //繪製顏色

  final double iconMargin; //icon與文字的距離
  final double iconMarginLeft;
  final double iconMarginTop;
  final double iconMarginRight;
  final double iconMarginBottom;

  TextView2({
    Key key,
    @required backgroundColor,
    this.onTap,
    this.text,
    this.textSize,
    this.textColor,
    margin,
    marginLeft,
    marginTop,
    marginRight,
    marginBottom,
    padding,
    paddingLeft,
    paddingTop,
    paddingRight,
    paddingBottom,
    this.imgFileLeft,
    this.imgFileTop,
    this.imgFileRight,
    this.imgFileBottom,
    this.imgWidth,
    this.imgHeight,
    this.imgTint,
//     borderWidth,
//     borderColor,
    radiusAll,
    radiusTopLeft,
    radiusTopRight,
    radiusBottomLeft,
    radiusBottomRight,
    this.iconMargin,
    this.iconMarginLeft,
    this.iconMarginTop,
    this.iconMarginRight,
    this.iconMarginBottom,
    elevation,
//     shadowColor,
//     splashColor,
//     highlightColor,
  }) : super(
          key: key,
          child: new Container(
            color: backgroundColor,
            child: Text(
              "asdjalkdsjkl",
            ),
          ),
          onTap: onTap,
//          backgroundColor:  Colors.transparent,
//          elevation: elevation,
//          shadowColor: shadowColor,
//          splashColor: splashColor,
//          highlightColor: highlightColor,
//          borderWidth: borderWidth,
//          borderColor: borderColor,
//          radiusAll: radiusAll,
//          radiusTopLeft: radiusTopLeft,
//          radiusTopRight: radiusTopRight,
//          radiusBottomLeft: radiusBottomLeft,
//          radiusBottomRight: radiusBottomRight,
//          padding: padding,
//          paddingLeft: paddingLeft,
//          paddingRight: paddingRight,
//          paddingTop: paddingTop,
//          paddingBottom: paddingBottom,
//          margin: margin,
//          marginLeft: marginLeft,
//          marginRight: marginRight,
//          marginTop: marginTop,
//          marginBottom: marginBottom,
        );
}
