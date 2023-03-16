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
          child: CustomText(
            title: 'Forget Password?',
            fontWeight: FontWeight.w900,
            size: 14.sp,
            color: AppColors.blackOpacity,
            decoration: TextDecoration.underline,
          )),
    );
  }
}
