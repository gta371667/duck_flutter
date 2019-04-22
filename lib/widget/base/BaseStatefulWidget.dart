import 'package:flutter/material.dart';

abstract class BaseStatefulWidget<T> extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return putState();
  }


  State putState();
}
