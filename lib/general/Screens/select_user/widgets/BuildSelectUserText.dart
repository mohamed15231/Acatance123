part of 'SelectUserWidgetsImports.dart';

class BuildSelectUserText extends StatelessWidget {
  const BuildSelectUserText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.r),
      child: CustomText(
        title: "Login As..",
        color: AppColors.black,
        size: 20.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
