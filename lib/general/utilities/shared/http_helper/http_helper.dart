import 'dart:convert';
import 'package:acatance/general/constants/ConstantValues.dart';
import 'package:auto_route/auto_route.dart';
import 'package:http/http.dart';

class HttpHelper {
  static Future<dynamic> postData(
      {required String url, required Map<String, dynamic> data}) async {
    Response response = await post(
      Uri.parse(url),
      headers: {
        //"Content-type": "application/json",
        "Content-type": "multipart/form-data;boundary= 1",
        "Authorization":"Bearer $tokenValue",
      },
      body: jsonEncode(data),
    );
    return jsonDecode(response.body);
  }

  static Future<dynamic> getDataHttp({
    required String url,
    Map<String, dynamic>? queryParam,
  }) async {
    Response response = await get(
      Uri.parse(url).replace(queryParameters: queryParam),
        headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    "Authorization":"Bearer $tokenValue",

    },
    );
    return jsonDecode(response.body);
  }
}
