import 'package:acatance/general/Screens/widgets/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';


ThemeData darkTheme = ThemeData(
  fontFamily: 'Janna',
  primarySwatch: Colors.blueGrey,
  floatingActionButtonTheme:
  FloatingActionButtonThemeData(backgroundColor: AppColors.primary),
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleSpacing: 20,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      elevation: 0,
      titleTextStyle: TextStyle(
          fontFamily: 'Janna',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold)),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor:Colors.blue ,
    unselectedItemColor: Colors.grey,
    elevation: 30,
    backgroundColor: Colors.red,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
    subtitle1: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 4, color: Colors.white,height: 1.3),
  ),
);
ThemeData lightTheme = ThemeData(
  fontFamily: 'Janna',
  primarySwatch: Colors.blueGrey,
  floatingActionButtonTheme:
  FloatingActionButtonThemeData(backgroundColor: AppColors.primary),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
      titleSpacing: 20,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
          fontFamily: 'Janna',
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold)),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
    subtitle1: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black,height: 1.3),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      elevation: 30,
      backgroundColor: Colors.white,
      ),
);