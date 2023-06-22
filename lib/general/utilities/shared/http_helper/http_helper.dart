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
        "Content-type": "application/json",
        "Authorization":"Bearer $tokenValue",
      },
      body: jsonEncode(data),
    );
    return jsonDecode(response.body);
  }
  static Future<dynamic> postDataQuiz(
      {required String url, required Map<String, dynamic> data}) async {
    Response response = await post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'multipart/form-data',
        "Authorization":"Bearer $tokenValue",
      },
      body: {
        "DeptId":"4fb11d7b-6988-4b5a-a92a-c2823144c3e5",
        "RankId":"ddab4df3-df8e-4b39-ac00-6a9d7e51f928",
        "DoctorId":"3a30ad1e-3c1e-43e4-af56-1635b384318d",
        "StartTime":"2023-06-19T00:11:29.422Z",
        "Subject_Id":"17f23f8f-d74a-4f79-90ab-9fefe6446764",
        "Duration":30,
        "Degree":"10",
        "ExamName":"test",
      },
    );
    return jsonDecode(response.body);
    // Response response = await post(
    //   Uri.parse(url),
    //   headers: {
    //     // "Content-type": "multipart/form-data",
    //     "Authorization":"Bearer $tokenValue",
    //   },
    //   body:  {
    //    "DeptId":"4fb11d7b-6988-4b5a-a92a-c2823144c3e5",
    //    "RankId":"ddab4df3-df8e-4b39-ac00-6a9d7e51f928",
    //    "DoctorId":"3a30ad1e-3c1e-43e4-af56-1635b384318d",
    //    "StartTime":"2023-06-19T00:11:29.422Z",
    //    "Subject_Id":"17f23f8f-d74a-4f79-90ab-9fefe6446764",
    //    "Duration":30,
    //    "Degree":"10",
    //    "ExamName":"test",
    //   },
    //     encoding: Encoding.getByName("utf-8")
    //
    // );
    // return jsonDecode(response.body);
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
