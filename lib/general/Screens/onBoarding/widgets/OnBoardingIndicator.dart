part of 'OnBoardingWidgetsImports.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({Key? key, required this.onBoardingData}) : super(key: key);
  final OnBoardingData onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.r),
      child: SmoothPageIndicator(
          controller: onBoardingData.boardController,
          count: onBoardingData.boarding.length,
        effect: ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: AppColors.primary,
          dotHeight: 10.h,
          expansionFactor: 4.sp,
          dotWidth: 10.w,
          spacing: 5.sp,
        ),
      ),
    );
  }
}
