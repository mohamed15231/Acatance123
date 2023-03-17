
import 'package:flutter/material.dart';

class Custom_Text extends StatelessWidget {

  Custom_Text({Key? key,required this.text,this.color_text, this.fontWeight, this.size, this.decoration, this.decorationStyle, this.align, this.height, this.fontFamily}) : super(key: key);

  final String text;
  final Color? color_text ;
  final FontWeight? fontWeight;
  final double? size;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;
  final TextAlign? align;
  final double? height;
  final String? fontFamily;




  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign:align ,
      style: TextStyle(
        fontFamily: fontFamily??"Poppins",
        color: color_text ??Colors.white,
        fontWeight: fontWeight??FontWeight.normal,
        fontSize: size,
        decoration: decoration,
        decorationStyle: decorationStyle,
        height: height,




      ),
    );
  }
}
