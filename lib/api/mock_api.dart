import 'package:pyon/model/reddit_post.dart';

class MockApi {
  static List<RedditPost> getMockData() {
    return List<RedditPost>.generate(30, (index) =>
        RedditPost(
            id: index,
            headerIcon: "",
            subredditName: "r/tifu",
            subredditLink: "",
            timePassed: "13h",
            title: "My grandfather, co-inventor of the halo, treating a patient with a cervical spine injury (1959)",
            voteCount: 15000,
            commentCount: 600,
            awards: List.empty()
        )
    );
  }
}