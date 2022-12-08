import 'package:dio/dio.dart';

class DioHelper{
 static var dio=Dio();

//to get data from API
 static Future getData({
  required String url,
   Map<String,dynamic>? query,
})async{
   dio.options.headers={
     'Content-Type': 'application/json',
   };

   return await dio.get(
     url,
     queryParameters: query
   );
 }



//to put data from API
 static Future<Response<dynamic>> postData({
  required String url,
  required Map<String, dynamic> data,
})async{
   // dio.options.headers= {
   //   'Content-Type': 'application/json',
   // };
   return await dio.post(url,queryParameters: data);
 }
}