import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pyon/api/authorize_api.dart';
import 'package:pyon/api/json/listing.dart';
import 'package:pyon/api/listing_api.dart';
import 'package:pyon/widget/feeds/card_view_post.dart';

class NewFeedsTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewFeedsTabState();
  }
}

class _NewFeedsTabState extends State<NewFeedsTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  List<Child> _redditPosts;

  @override
  void initState() {
    super.initState();
    getNewPosts();
  }

  Future getNewPosts() async {
    String token = await AuthorizeApi.requestAccessToken();
    Listing listing = await ListingApi.requestNewPosts("", "", token);
    setState(() {
      _redditPosts = listing.data.children;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: ListView.builder(
          itemCount: _redditPosts.length,
          itemBuilder: (context, index) {
            return CardViewPost(child: _redditPosts.elementAt(index), onPress: () {});
          },
        )
    );
  }
}
