import 'package:flutter/widgets.dart';

///傳入Widget Key 回傳對應

///Widget的X軸
getX(GlobalKey key) {
  RenderBox renderBox = key.currentContext.findRenderObject();
  double dx = renderBox.localToGlobal(Offset.zero).dx;
  return dx;
}

///Widget的Y軸
getY(GlobalKey key) {
  RenderBox renderBox = key.currentContext.findRenderObject();
  double dy = renderBox.localToGlobal(Offset.zero).dy;
  return dy;
}

///Widget的寬度
getWidth(GlobalKey key) {
  RenderBox renderBox = key.currentContext.findRenderObject();
  return renderBox.size.width;
}

///Widget的高度
getHeight(GlobalKey key) {
  RenderBox renderBox = key.currentContext.findRenderObject();
  return renderBox.size.height;
}