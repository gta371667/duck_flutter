import 'package:flutter/material.dart';
import 'package:duck_flutter/model/IconModel.dart';
import 'package:duck_flutter/widget/IconRippleView2.dart';

class IconAdapter extends StatelessWidget {
  IconAdapter(this.position, this.data);

  final int position;
  final IconModel data;

  @override
  Widget build(BuildContext context) {
    return IconRippleView2(
      image: new Image.asset(data.drawableRes),
      marginTop: 5,
      marginBottom: 5,
      marginLeft: 5,
      radius: 5,
    );
  }
}
