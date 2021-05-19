import 'package:dio/dio.dart';

import 'json/listing.dart';

class ListingApi {
  static Future<Listing> requestHotPosts(String after, String before, String token) async {
    var dio = Dio();

    var response = await dio.get("https://oauth.reddit.com/hot",
      options:
        Options(
          headers: {"Authorization": "Bearer $token"}
        )
    );

    if (response.statusCode == 200) {
      return Listing.fromJson(response.data);
    } else {
      return null;
    }
  }

  static Future<Listing> requestNewPosts(String after, String before, String token) async {
    var dio = Dio();

    var response = await dio.get("https://oauth.reddit.com/new",
        options:
        Options(
            headers: {"Authorization": "Bearer $token"}
        )
    );

    if (response.statusCode == 200) {
      return Listing.fromJson(response.data);
    } else {
      return null;
    }
  }
}