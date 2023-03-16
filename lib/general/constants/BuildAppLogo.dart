import 'package:acatance/general/Screens/widgets/AppColors.dart';
import 'package:acatance/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildAppLogo extends StatelessWidget {
  const BuildAppLogo({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        Res.logo,
        height: 400,
      ),
    );
  }
}
