import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestFeedsTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BestFeedsTabState();
  }
}

class _BestFeedsTabState extends State<BestFeedsTab> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text("跳转"),
              color: Colors.pinkAccent,
              onPressed: () => {},
            )
          ],
        ),
      ),
    );
  }
}