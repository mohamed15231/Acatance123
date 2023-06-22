part of 'ButtonOnBoardingImports.dart';
class Last_Button_OnBoarding extends StatelessWidget {
  const Last_Button_OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 15.0.h),
      child: Custom_Button(
        buttonColor:AppColors.primary,
        borderRadiusCirculer: BorderRadius.circular(30.0),
        text: 'Get Started',
        fontWeight: FontWeight.normal,
        width:188.w ,
        listShadow:  [
              BoxShadow(
                color: Color(0x28000000),
                blurRadius: 45.spMin,
                offset: Offset(0, 35.spMin),
              ),
            ],


        sizeText: 20.0.spMin, TextColor: AppColors.white, onPressed: () {

        Navigator_And_Replace.navigate(context: context, page:SelectUser());
        CacheHelper.saveData(key: ConstantValue.onBoarding, value: true);
      },

      ),
    );
  }
}

