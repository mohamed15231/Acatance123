part of 'ButtonOnBoardingImports.dart';

class Custom_Button_OnBoarding extends StatefulWidget {
  const Custom_Button_OnBoarding({Key? key, })
      : super(key: key);

  @override
  State<Custom_Button_OnBoarding> createState() => _Custom_Button_OnBoardingState();
}

class _Custom_Button_OnBoardingState extends State<Custom_Button_OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
        });
        On_Boarding_Data.indicatorPageController.nextPage(
            duration: const Duration(
              microseconds: 750,
            ),
            curve: Curves.easeInToLinear);
        ;

      },
      child: Container(
        width: 70.w,
        height: 70.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff03477F),
            boxShadow: [
              BoxShadow(
                color: Color(0x28000000),
                blurRadius: 45,
                offset: Offset(0, 35),
              )
            ]),

        // radius: 38.0.w,
        child: Transform.rotate(
          angle: -170.5,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 30.w,
          ),
        ),
      ),
    );
  }
}
