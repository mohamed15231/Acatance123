part of 'Widgets_Imports.dart';

class Container_Choice extends StatelessWidget {
  Container_Choice({Key? key, required this.onTap,  this.containerColor, this.textColor, required this.text}) : super(key: key);
  final Function() onTap;
   Color? containerColor;
   Color? textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 135.w,
        height: 70.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:containerColor??AppColors.secondary,
            border: Border.all(
                color:  AppColors.secondary,
                width: 2
            )
        ),
        child: Center(
          child: Custom_Text(
            text:  text,
            color_text: textColor,
            size:20.r,
          ),
        ),
      ),
    );
  }
}
