import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BaseAppBar extends AppBar {
  static const defaultImg = "assets/images/ic_arrow_back.png";

  final BuildContext context;
  final PreferredSizeWidget bottom;

  final Color backgroundColor;

  final String titleText;
  final Color textColor;
  final bool isCenterTitle; //是否文字置中

  final String leftIcon;
  final Color leftIconTint;
  final double leftIconWidth;
  final double leftIconHeight;

  final double elevation;

  final Color iconHighlightColor; //長按時背景顏色
  final Color iconSplashColor; //點擊時背景色

  final List<Widget> actions;

  BaseAppBar(
    this.context, {
    Key key,
    this.backgroundColor,
    this.elevation = 0.0,
    this.bottom,
    @required this.titleText,
    this.textColor,
    this.isCenterTitle,
    this.leftIcon = defaultImg,
    this.leftIconTint,
    this.leftIconWidth = 25,
    this.leftIconHeight = 25,
    this.iconHighlightColor,
    this.iconSplashColor,
    this.actions,
  })  : assert(titleText != null),
        super(
            key: key,
            bottom: bottom,
            backgroundColor: backgroundColor,
            centerTitle: isCenterTitle,
            elevation: elevation,
            title: new Text(
              titleText,
              style: TextStyle(color: textColor),
            ),
            leading: new IconButton(
              icon: Image.asset(
                leftIcon.isEmpty ? defaultImg : leftIcon,
                color: leftIconTint,
                height: leftIconHeight,
                width: leftIconWidth,
              ),
              highlightColor: iconHighlightColor,
              splashColor: iconSplashColor,
              onPressed: () {
                if (identical(defaultImg, leftIcon)) {
                  Navigator.pop(context);
                } else {
                  print('bbb');
                  Scaffold.of(context).openDrawer();
                }
              },
            ),
            actions: actions);
}
