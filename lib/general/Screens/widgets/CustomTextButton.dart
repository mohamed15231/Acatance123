part of 'Widgets_Imports.dart';

class Custom_Text_Button extends StatelessWidget {
  const Custom_Text_Button({Key? key, required this.onPressed, required this.text, required this.textColor, this.decorationText, this.ContainerColor, this.alignment, this.size}) : super(key: key);
  final Function() onPressed;
  final String text;
  final Color textColor;
  final Color? ContainerColor;
  final TextDecoration? decorationText;
  final AlignmentGeometry? alignment;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment??Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ContainerColor),
        ),
        child: Custom_Text(
          text: text,
          color_text: textColor,
          decoration:decorationText,
          fontWeight: FontWeight.normal,
          size: size??15.sp,
        ),
      ),
    );
  }
}
