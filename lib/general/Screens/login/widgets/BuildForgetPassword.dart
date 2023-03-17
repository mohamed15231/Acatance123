part of 'LoginWidgetsImports.dart';

class BuildForgetPassword extends StatelessWidget {
  const BuildForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ForgetPassword()),
            );
          },
          child: Custom_Text(
            text: 'Forget Password?',
            fontWeight: FontWeight.w900,
            size: 14.sp,
            color_text: AppColors.blackOpacity,
            decoration: TextDecoration.underline,
          )),
    );
  }
}
