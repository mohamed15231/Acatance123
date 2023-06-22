import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../general/Screens/widgets/AppColors.dart';
import '../../../../../../general/Screens/widgets/Widgets_Imports.dart';

class CustomTextStateScreen extends StatelessWidget {
  const CustomTextStateScreen({Key? key, required this.leftText, required this.RightText}) : super(key: key);
  final String leftText;
  final String RightText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custom_Text(
          text: leftText,
          color_text: AppColors.black,
          fontWeight: FontWeight.w700,
          size: 16.r,
        ),
        Custom_Text(
          text: RightText,
          color_text: AppColors.black,
          fontWeight: FontWeight.w600,
          size: 16.r,

        ),
      ],
    );
  }
}
