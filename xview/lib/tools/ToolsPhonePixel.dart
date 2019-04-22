import 'package:flutter/material.dart';

class ToolsPhonePixel {
  //取得手機寬度
  static double getPixelWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //取得手機高度
  static double getPixelHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }
}
