
part of 'Widgets_Imports.dart';
class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {Key? key,
        this.buttonColor,
        this.TextColor,
        required this.text,
        required this.onPressed,
        this.width,
        this.height,
        this.listShadow,
        this.textSize,
        this.fontWeight,
        this.borderRadiusCirculer, this.margin, this.textDecoration})
      : super(key: key);

  final Color? buttonColor;
  final Color? TextColor;
  final String text;
  final Function() onPressed;
  final double? width;
  final double? height;
  final double? textSize;
  final FontWeight? fontWeight;
  final List<BoxShadow>? listShadow;
  final BorderRadiusGeometry? borderRadiusCirculer;
  final EdgeInsetsGeometry? margin;
  final TextDecoration? textDecoration;

  //150
  //36
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: margin,

      width: width??163.w,
      height: height??46.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary),
        boxShadow: listShadow??
            <BoxShadow>[BoxShadow(
            color: Colors.black54,
            blurRadius: 30.0,
            offset: Offset(0.0, 20)
        ),],
        color: buttonColor??AppColors.selectedNavBarColor,
        borderRadius: borderRadiusCirculer?? BorderRadius.circular(30.0),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Custom_Text(
          text: text,
          color_text: TextColor??AppColors.white,
          size: textSize??20.sp,
          fontWeight: fontWeight??FontWeight.w400,
          decoration:textDecoration ,
        ),
      ),
    );
  }
}
