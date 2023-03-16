import 'dart:convert';
import 'package:http/http.dart';

class HttpHelper {
  static Future<dynamic> postData({required Map<String, dynamic> data}) async {
    Response response = await post(
      Uri.parse("http://10.0.2.2:5000/Account/Login"),
      headers: {"Content-type": "application/json"},
      body: jsonEncode(data),
    );
    return jsonDecode(response.body);
  }
}
