part of 'Widgets_Imports.dart';


class BuildSplashBody extends StatelessWidget {
  const BuildSplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildAppLogo(),
            CustomText(
              title: 'Welcome To',
              size: 25.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomText(
              title: 'Acatance',
              size: 50.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ],
        );
      },
    );
  }
}
