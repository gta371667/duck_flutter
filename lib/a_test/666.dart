import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class TestAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Color bgColor; //背景色
  final String bgImage; //背景圖

  final double elevation; //陰影
  final double elevationRadius; //陰影擴散
  final Color shadowColor; //陰影顏色

  final String titleText;
  final double textSize;
  final Color textColor;
  final double titleSpacing; //標題字間距
  final bool centerTitle; //標題是否置中

  final Color leadingColor; //陰影顏色

  final Widget leading; //左icon
  final List<Widget> actions; //右icon列

  final bool automaticallyImplyLeading; //是否自動產生左邊Icon
  final PreferredSizeWidget bottom;

  TestAppBar({
    this.bgColor,
    this.bgImage,
    this.leading,
    this.actions,
    this.titleText = "",
    this.textSize = 18,
    this.textColor = Colors.white,
    this.centerTitle = true,
    this.elevation = 0,
    this.elevationRadius = 0,
    this.shadowColor = Colors.transparent,
    this.automaticallyImplyLeading = true,
    this.titleSpacing = 1.3,
    this.leadingColor = Colors.white,
    this.bottom,
  })  : preferredSize = Size.fromHeight(kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0)),
        super();

  @override
  _TestAppBarState createState() => _TestAppBarState();

  ///預設高度 56dp
  @override
  final Size preferredSize;
}

class _TestAppBarState extends State<TestAppBar> {
  void _handleDrawerButton() {
    Scaffold.of(context).openDrawer();
  }

  void _handleDrawerButtonEnd() {
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    AppBar();
    final ScaffoldState scaffold = Scaffold.of(context, nullOk: true);
    final bool hasDrawer = scaffold?.hasDrawer ?? false;
    final bool hasEndDrawer = scaffold?.hasEndDrawer ?? false;

    final ModalRoute<dynamic> parentRoute = ModalRoute.of(context);
    final bool canPop = parentRoute?.canPop ?? false;
    final bool useCloseButton = parentRoute is PageRoute<dynamic> && parentRoute.fullscreenDialog;

    ///左Icon
    Widget leadingWidget = widget.leading;
    if (widget.leading == null && widget.automaticallyImplyLeading) {
      if (hasDrawer) {
        leadingWidget = IconButton(
          icon: Icon(Icons.menu),
          color: widget.leadingColor,
          onPressed: _handleDrawerButton,
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      } else {
        if (canPop)
          leadingWidget = useCloseButton
              ? const CloseButton()
              : BackButton(
                  color: widget.leadingColor,
                );
      }
    }

    ///若有自訂，則用自訂並限制寬度
    if (leadingWidget != null) {
      leadingWidget = ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: kToolbarHeight),
        child: leadingWidget,
      );
    }

    ///右Icon
    Widget actions;
    if (widget.actions != null && widget.actions.isNotEmpty) {
      actions = Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: widget.actions,
      );
    } else if (hasEndDrawer) {
      actions = IconButton(
        icon: const Icon(Icons.menu),
        onPressed: _handleDrawerButtonEnd,
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    }

    // Allow the trailing actions to have their own theme if necessary.
    if (actions != null) {
      actions = IconTheme.merge(
        data: IconThemeData(),
        child: actions,
      );
    }

    final Widget toolbar = NavigationToolbar(
      leading: leadingWidget,
      middle: Text(
        widget.titleText,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: widget.textColor,
          fontSize: widget.textSize,
          letterSpacing: widget.titleSpacing,
        ),
      ),
      trailing: actions,
      centerMiddle: widget.centerTitle,
    );

    return SizedBox.fromSize(
      size: widget.preferredSize,
      child: Ink(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(),
          color: Colors.transparent,
          image: widget.bgImage == null
              ? null
              : DecorationImage(
                  image: AssetImage(widget.bgImage),
                  fit: BoxFit.cover,
                ),
          shadows: [
            BoxShadow(
              color: widget.shadowColor,
              spreadRadius: widget.elevation,
              blurRadius: widget.elevationRadius,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, //狀態列高度
          ),
          child: toolbar,
        ),
      ),
    );
  }
}
