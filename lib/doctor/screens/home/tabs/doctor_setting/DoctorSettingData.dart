part of 'DoctorSettingImports.dart';

class DoctorSettingData {
  static Future logOut() async {
    CacheHelper.remove(key: ConstantValue.token);
    CacheHelper.remove(key: ConstantValue.idConstant);
    CacheHelper.remove(key: ConstantValue.typeConstant);
  }
}
