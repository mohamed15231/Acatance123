

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


class Data {

  String? token;
  int? type;
  String? id;
  Data.fromJson(dynamic json) {
    token = json['token'];
    type = json['type'];
    id = json['id'];
  }


}
