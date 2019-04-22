import 'package:flutter/material.dart';
import 'package:duck_flutter/widget/base/BaseStatefulWidget.dart';

abstract class BaseState<T extends BaseStatefulWidget> extends State<T> {
  ///初始化，建構子之後
  @override
  void initState() {
    super.initState();
    print("${T.toString()} initState");
  }

  ///在initState()之后立刻调用
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("${T.toString()} didChangeDependencies ");
  }

  ///被幹掉前調用
  @override
  void deactivate() {
    super.deactivate();
    print("${T.toString()} deactivate");
  }

  ///被幹掉
  @override
  void dispose() {
    super.dispose();
    print("${T.toString()} dispose ");
  }

  ///组件状态改变时候调用，可能会调用多次
  @override
  void didUpdateWidget(T oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("${T.toString()} didUpdateWidget ");
  }
}
