/// data : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiTW9oYW1lZCBUYXJlayIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkRvY3RvciIsImV4cCI6MTY2ODUxNDIyNCwiaXNzIjoiKiIsImF1ZCI6IioifQ.58Uo8DIuts0rGBTCuWU_nIKGDuddmRn1IPRwA9rozPU"}
/// success : true
/// message : null
/// errors : null

class LoginModel {
  Data? data;
  bool? success;
  dynamic message;
  dynamic errors;
  LoginModel.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    success = json['success'];
    message = json['message'];
    errors = json['errors'];
  }


}

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiTW9oYW1lZCBUYXJlayIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkRvY3RvciIsImV4cCI6MTY2ODUxNDIyNCwiaXNzIjoiKiIsImF1ZCI6IioifQ.58Uo8DIuts0rGBTCuWU_nIKGDuddmRn1IPRwA9rozPU"

class Data {

  String? token;
  Data.fromJson(dynamic json) {
    token = json['token'];
  }


}