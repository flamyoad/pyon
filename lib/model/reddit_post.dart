class RedditPost {
  // We can also define a constructor using curly braces { } to specify named parameters.
  const RedditPost({
    this.id,
    this.headerIcon,
    this.subredditName,
    this.subredditLink,
    this.timePassed,
    this.title,
    this.voteCount,
    this.commentCount,
    this.awards,
  });

  final int id;
  final String headerIcon;
  final String subredditName;
  final String subredditLink;
  final String timePassed;
  final String title;
  final int voteCount;
  final int commentCount;
  final List<String> awards;

  /// Get the readable string of the vote count.
  /// Example: 15200 will be converted to 15.2k
  String getVoteCountStr() {
    if (voteCount < 1000) return voteCount.toString();

    String convertedVoteCount = (voteCount / 1000).toStringAsFixed(1);
    return convertedVoteCount + "k";
  }

  String getCommentCountStr() {
    if (commentCount < 1000) return commentCount.toString();

    String convertedVoteCount = (commentCount / 1000).toStringAsFixed(1);
    return convertedVoteCount + "k";
  }
}
