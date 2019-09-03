import 'package:flutter/material.dart';

class ToolsPhonePixel {
  //取得狀態列高度
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  //取得手機寬度dp
  static double getWidthDp(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //取得手機寬度px
  static double getWidthPx(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.width * mediaQuery.devicePixelRatio;
  }

  //取得手機高度dp
  static double getHeightDp(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  //取得手機高度px
  static double getHeightPx(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.height * mediaQuery.devicePixelRatio;
  }

  //取得1dp有多少px
  static double getPxInDp(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }
}
