import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors{
  static Color primary = const Color(0xFF02315E);
  static Color backgroundColor = const Color(0xfff0f0f2);
  static Color yellow = const Color(0xffE8CB3A);
  static Color labelTextField = const Color(0xff7A7A7A);
  static Color secondary =  const Color(0xff4F7EA5);
  static Color txtColor = const Color(0xff1a201d);
  static Color headerColor =  const Color(0xff6e7c87);
  static Color selectedNavBarColor =  const Color(0xff03477F);
  static Color steelBlue =  const Color(0xff4F7EA5);
  static Color darkCerulean =  const Color(0xff03477F);
  static Color colorArrowIcon =  const Color(0xff4F7EA5);
  static Color bg=const Color(0xfffffafa);
  static Color offWhite=const Color(0xffF2F2F2);
  static Color gold=const Color(0xffe4aa69);
  static Color grey=Colors.grey;
  static Color greyWhite=Colors.grey.withOpacity(.2);
  static Color black=const Color(0xff000000);
  static Color blackOpacity=Colors.black54;
  static Color white=Colors.white;
  static Color notifyColor=Colors.black54;



  static Color convertColor(String color){
    int hex = int.parse(color.replaceFirst("#", "0xff"));
    return Color(hex);
  }



}