import 'package:flutter/material.dart';
import 'package:pyon/api/json/listing.dart';

class PostHeader extends StatelessWidget {
  PostHeader({@required this.child});

  final Child child;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CircleAvatar(
//        backgroundImage: NetworkImage(child.data.),
        radius: 14,
      ),
      SizedBox(width: 8),
      Expanded(child: Wrap(
        spacing: 4,
        children: [
          Text(child.data.subredditNamePrefixed, style: TextStyle(fontWeight: FontWeight.w400)),
          Text("·" , style: TextStyle(fontWeight: FontWeight.w400)),
          Text(child.data.created.toString(), style: TextStyle(color: Colors.black38))
        ],
      )),
      IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, color: Colors.black45,))
    ]);
  }
}
