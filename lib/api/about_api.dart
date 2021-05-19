import 'package:dio/dio.dart';
import 'package:pyon/api/json/about.dart';

class AboutApi {
  /// Example parameter for [subredditNamePrefixed] is "r/nottheonion"
  static Future<About> getAbout(String subredditNamePrefixed, String token) async {
    var dio = Dio();

    var response = await dio.get("https://oauth.reddit.com/hot",
        options:
        Options(
            headers: {"Authorization": "Bearer $token"}
        )
    );

    if (response.statusCode == 200) {
      return About.fromJson(response.data);
    } else {
      return null;
    }
  }
}