import 'package:flutter/material.dart';

turnPage(BuildContext context, StatefulWidget activity) {
  Navigator.push(
    context,
    new MaterialPageRoute(builder: (context) => activity),
  );
}
