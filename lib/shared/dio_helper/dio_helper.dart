import 'package:dio/dio.dart';

class DioHelper{
 static var dio=Dio();

//to get data from API
 static Future getData({
  required String url,
})async{
   return await dio.get(
     url,
   );
 }

 static Future postData({
  required String url,
  required Map<String, dynamic> data,
})async{
   return await dio.post(url,data: data);
 }
}