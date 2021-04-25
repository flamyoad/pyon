import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pyon/api/credentials.dart';

class AuthorizeApi {
  static Future<String> requestAccessToken() async {
    var dio = Dio();
    var requestBody = FormData.fromMap({
      'grant_type': 'https://oauth.reddit.com/grants/installed_client',
      'device_id': 'DO_NOT_TRACK_THIS_DEVICE'
    });
    dio.options.contentType = Headers.formUrlEncodedContentType;

    // Empty string is used as password here. "username:password" needs to be encoded in base64. Otherwise 401 will be thrown
    var response = await dio.post('https://www.reddit.com/api/v1/access_token',
        data: requestBody,
        options:
            Options(contentType: Headers.formUrlEncodedContentType, headers: {
          'Authorization': "Basic ${base64Encode(utf8.encode(Cridentials.clientKey + ":"))}"
        }));

    if (response.statusCode == 200) {
      var result = json.decode(response.data);
      log(result);
    }

    return "";
  }
}
