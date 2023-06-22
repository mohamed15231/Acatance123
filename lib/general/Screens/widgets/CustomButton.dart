
part of 'Widgets_Imports.dart';
class Custom_Button extends StatelessWidget {
  const Custom_Button(
      {Key? key,
       this.buttonColor,
      this.TextColor,
      required this.text,
      required this.onPressed,
      this.width,
      this.height,
      this.listShadow,
      this.sizeText,
      this.fontWeight,
      this.borderRadiusCirculer})
      : super(key: key);

  final Color? buttonColor;
  final Color? TextColor;
  final String text;
  final Function() onPressed;
  final double? width;
  final double? height;
  final double? sizeText;
  final FontWeight? fontWeight;
  final List<BoxShadow>? listShadow;
  final BorderRadiusGeometry? borderRadiusCirculer;

  //150
  //36
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width??163.w,
      height: height??46.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary),
        boxShadow: listShadow,
        color: buttonColor??AppColors.selectedNavBarColor,
        borderRadius: borderRadiusCirculer?? BorderRadius.circular(30.0),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Custom_Text(
          text: text,
          color_text: TextColor??AppColors.white,
          size: sizeText??20.sp,
          fontWeight: fontWeight??FontWeight.w400,
        ),
      ),
    );
  }
}
