import 'package:flutter/material.dart';
import 'package:pyon/model/reddit_post.dart';
import 'package:pyon/widget/feeds/post_header.dart';

class CardViewPost extends StatelessWidget {
  CardViewPost({@required this.redditPost, @required this.onPress});

  final RedditPost redditPost;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell( // InkWell supplies the ripple effect
        onTap: () => {},
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              PostHeader(redditPost: redditPost),
              Text(
                redditPost.title,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
