import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pyon/api/mock_api.dart';
import 'package:pyon/model/reddit_post.dart';
import 'file:///F:/pyon/pyon/lib/widget/feeds/card_view_post.dart';

class BestFeedsTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BestFeedsTabState();
  }
}

class _BestFeedsTabState extends State<BestFeedsTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final List<RedditPost> posts = MockApi.getMockData();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return CardViewPost(redditPost: posts.elementAt(index), onPress: () {});
      },
    ));
  }
}
