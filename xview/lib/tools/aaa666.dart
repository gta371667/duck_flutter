import 'package:flutter/material.dart';

class aaa666 {
  //取得手機寬度
  static double getPixelWidth666(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //取得手機高度
  static double getPixelHeight666(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getStatusBarHeight666(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }
}
