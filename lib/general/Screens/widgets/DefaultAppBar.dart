import 'package:acatance/general/screens/widgets/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'CustomText.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String? title;
  final Widget? leading;
  final Widget? trailing;
  final PreferredSizeWidget? bottom;
  final List<Widget>? action;
  final double? size;
  final double? iconSize;
  final double? elev;
  final Color? color,bgColor,iconColor;
  final bool? back,center;

  const DefaultAppBar({Key? key,
    this.title,
    this.action=const[],
    this.leading,
    this.bottom,
    this.trailing,
    this.size,
    this.elev,
    this.color,
    this.bgColor,
    this.back=true,
    this.center=false,
    this.iconColor, this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: size??100,
      elevation: elev??0,
      title: Custom_Text(
        text: '$title',
        color_text: color??Colors.white,
        size: 18,
      ),
      centerTitle: center,
      titleSpacing: 0,
      backgroundColor: bgColor??Colors.transparent,
      leading: leading?? Offstage(
        offstage: !back!,
        child: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios_outlined,
            size: iconSize??20.w,
            color: iconColor??Colors.black,
          ),
        ),
      ),

      actions: action,
      bottom: bottom,

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size??60);
}