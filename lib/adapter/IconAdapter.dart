import 'package:duck_flutter/model/IconModel.dart';
import 'package:flutter/material.dart';
import 'package:xview/widget/ImageRippleView.dart';

class IconAdapter extends StatelessWidget {
  IconAdapter(this.position, this.data);

  final int position;
  final IconModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      child: ImageRippleView(
        showRipple: false,
        image: new Image.asset(data.drawableRes),
        radius: 5,
        onPressed: () {
          print("icon 666");
        },
      ),
    );
  }
}
