import 'package:flutter/material.dart';
import 'package:pyon/api/json/listing.dart';
import 'package:pyon/widget/feeds/post_header.dart';

class CardViewPost extends StatelessWidget {
  CardViewPost({@required this.child, @required this.onPress});

  final Child child;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        // InkWell supplies the ripple effect
        onTap: () => {},
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              PostHeader(child: child),
              Text(
                child.data.title,
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
