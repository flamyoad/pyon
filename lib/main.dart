import 'package:flutter/material.dart';
import 'package:pyon/api/authorize_api.dart';
import 'package:pyon/screen/search/search_screen.dart';
import 'package:pyon/screen/settings/settings_screen.dart';

import 'screen/feeds/feeds_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pyon',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MainPage(title: 'Pyon'),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  MainPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List<Widget> _bottomNavScreens;

  List<BottomNavigationBarItem> getItems() {
    return [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.adb), label: "Search"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Settings"),
    ];
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;

    _bottomNavScreens = <Widget>[
      FeedsMainScreen(title: widget.title),
      SearchScreen(title: widget.title),
      SettingsScreen(title: widget.title),
    ];

    AuthorizeApi.requestAccessToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: getItems(),
        onTap: onTabTapped,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _bottomNavScreens,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
