import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pyon/screen/feeds/hot_feeds_tab.dart';
import 'package:pyon/screen/feeds/new_feeds_tab.dart';

class FeedsMainScreen extends StatefulWidget {
  final String title;

  FeedsMainScreen({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FeedsMainScreenState();
  }
}

class _FeedsMainScreenState extends State<FeedsMainScreen> {
//  List<String> _tabList = ["Best", "Hot", "New", "Top", "Rising"];
  List<Widget> _tabList = [
//    Tab(text: "Best", icon: Icon(Icons.sports_cricket)),
    Tab(text: "Hot", icon: Icon(Icons.fireplace)),
    Tab(text: "New", icon: Icon(Icons.sports_cricket)),
    Tab(text: "Top", icon: Icon(Icons.topic)),
    Tab(text: "Rising", icon: Icon(Icons.flaky)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
          centerTitle: true,
          bottom: TabBar(tabs: _tabList),
        ),
        body: TabBarView(
          children: <Widget>[
            NewFeedsTab(),
            HotFeedsTab(),
            HotFeedsTab(),
            HotFeedsTab()
          ],
        ),
      ),
    );
  }
}
