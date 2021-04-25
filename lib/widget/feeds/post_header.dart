import 'package:flutter/material.dart';
import 'package:pyon/model/reddit_post.dart';

class PostHeader extends StatelessWidget {
  PostHeader({@required this.redditPost});

  final RedditPost redditPost;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CircleAvatar(
//        backgroundImage: NetworkImage(redditPost.headerIcon),
        radius: 14,
      ),
      SizedBox(width: 8),
      Expanded(child: Wrap(
        spacing: 4,
        children: [
          Text(redditPost.subredditName, style: TextStyle(fontWeight: FontWeight.w400)),
          Text("·" , style: TextStyle(fontWeight: FontWeight.w400)),
          Text(redditPost.timePassed, style: TextStyle(color: Colors.black38))
        ],
      )),
      IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, color: Colors.black45,))
    ]);
  }
}
