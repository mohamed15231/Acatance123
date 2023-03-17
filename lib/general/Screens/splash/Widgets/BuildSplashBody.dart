part of 'Widgets_Imports.dart';

class BuildSplashBody extends StatelessWidget {
  const BuildSplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildAppLogo(),
            Custom_Text(
              size: 25.sp,
              fontWeight: FontWeight.bold,
              color_text: AppColors.white,
              text: 'Welcome To',
              decoration: TextDecoration.none,
            ),
            SizedBox(
              height: 15.h,
            ),
            Custom_Text(
              text: 'Acatance',
              size: 50.sp,
              fontWeight: FontWeight.bold,
              color_text: AppColors.white,
              decoration: TextDecoration.none,

            ),
          ],
        );
      },
    );
  }
}
