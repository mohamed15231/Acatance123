import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors{
  static Color primary =  const Color(0xFF02315E);
  static Color secondary =  const Color(0xFF00457E);
  static Color white=const Color(0xFFFFFFFF);
  static Color one=const Color(0xFF2F70AF);
  static Color two=const Color(0xFFB9848C);
  static Color three=const Color(0xFF806491);

  static Color convertColor(String color){
    int hex = int.parse(color.replaceFirst("#", "0xff"));
    return Color(hex);
  }



}