class IconModel {
  IconType type;
  String subText;
  String drawableRes;

  IconModel(
    this.type,
    this.subText,
    this.drawableRes,
  );
}

enum IconType { Home, Info, News, Book, Link }
