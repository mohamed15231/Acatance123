part of 'WidgetImports.dart';
class CustomTextCreateQrScreen extends StatelessWidget {
  const CustomTextCreateQrScreen({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return   Custom_Text(
      text: text,
      color_text: AppColors.black,
      fontWeight: FontWeight.w600,
      size: 20.r,
    );

  }
}
