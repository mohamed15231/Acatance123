import 'package:acatance/Screens/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class BuildAppLogo extends StatelessWidget {
  const BuildAppLogo({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/Cata 4.png',
      height: 180,
      color: color,
    );
  }
}
