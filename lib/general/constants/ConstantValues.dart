import 'package:acatance/general/Screens/widgets/CustomButtomNavBar.dart';
import 'package:acatance/general/Screens/widgets/Widgets_Imports.dart';
import 'package:acatance/student/screens/home/tabs/home/MainImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res.dart';
import '../../student/screens/home/tabs/attendance/AttendanceImports.dart';
import '../../student/screens/home/tabs/profile/ProfileImports.dart';
import '../../student/screens/home/tabs/setting/SettingImports.dart';
import '../screens/widgets/AppColors.dart';

class ConstantValue {
  static const String onBoarding = "onBoarding";
  static const String token = "token";
  static const String typeConstant = "type";
  static const String idConstant = "id";
}

dynamic tokenValue;
dynamic typeValue;
dynamic idValue;
dynamic baseUrl = "http://yosefebrahim-001-site1.btempurl.com/";

List<BottomNavyBarItem> tabs = [
  BottomNavyBarItem(
    iconHeight: 40.h,

    title: "Home", stringImage: Res.homeNavBar,
  ),
  BottomNavyBarItem(
    iconHeight: 40.h,

    stringImage: Res.profileNavBar,
    title: "profile",
    ),
  BottomNavyBarItem(
    iconHeight: 40.h,

    stringImage: Res.scanNavBar,


    title:"scan",
  ),
  BottomNavyBarItem(
    iconHeight: 40.h,

    stringImage: Res.settingNavBar,
    title: "settings",
  ),
];
