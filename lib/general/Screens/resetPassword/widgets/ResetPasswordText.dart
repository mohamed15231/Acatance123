part of 'ResetPasswordWidgetsImports.dart';

class ResetPasswordText extends StatelessWidget {
  const ResetPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(bottom: 50.r),
      child: Custom_Text(
        text: 'Reset Password..',
        size: 20.sp,
        fontWeight: FontWeight.bold,
        color_text: AppColors.black,
      ),
    );
  }
}
