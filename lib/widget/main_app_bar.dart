import 'dart:ui';

import 'package:flutter/material.dart';

// https://stackoverflow.com/questions/51013430/flutter-dart-constructor
class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  MainAppBar({Key key, this.title, this.tabItems})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  final String title;
  final List<Widget> tabItems;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      bottom: TabBar(tabs: widget.tabItems),
      centerTitle: true,
    );
  }
}
