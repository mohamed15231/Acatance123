part of 'PinCodeWidgetsImports.dart';

class BuildForgetPassPinCodeText extends StatelessWidget {
  const BuildForgetPassPinCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.r,bottom: 15.r),
      child: Column(
        children: [
          CustomText(
            title: 'verify \n your password',
            size: 25.sp,
            align: TextAlign.center,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomText(
            title: 'Enter your OTP code here',
            size: 18.sp,
            color: AppColors.black,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
