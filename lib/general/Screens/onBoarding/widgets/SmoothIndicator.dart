part of 'ButtonOnBoardingImports.dart';

class Smooth_Indicator extends StatelessWidget {
   Smooth_Indicator({Key? key,required this.on_boarding_data}) : super(key: key);
  On_Boarding_Data on_boarding_data;


  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: On_Boarding_Data.indicatorPageController,
      count: on_boarding_data.boarding.length,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: 30.w,
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20),
          height: 10.h,
        ),
        dotDecoration: DotDecoration(
          width: 10.w,
          color: Colors.grey,
          height: 10.h,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
