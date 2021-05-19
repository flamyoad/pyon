import 'package:pyon/model/reddit_post_minimal.dart';

class MockApi {
  static List<RedditPostMinimal> getMockData() {
    return List<RedditPostMinimal>.generate(30, (index) =>
        RedditPostMinimal(
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