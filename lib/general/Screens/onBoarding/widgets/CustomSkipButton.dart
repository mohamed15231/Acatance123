part of 'ButtonOnBoardingImports.dart';

class Custom_Skip_Button extends StatelessWidget {
  const Custom_Skip_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Custom_Text_Button(
        onPressed: () {
          Navigator_And_Replace.navigate(context: context,page: SelectUser());
          CacheHelper.saveData(key: ConstantValue.onBoarding, value: true);
        },
        text: 'Skip',

        decorationText: TextDecoration.underline, textColor: Color(0xff000000),
      );

  }
}
