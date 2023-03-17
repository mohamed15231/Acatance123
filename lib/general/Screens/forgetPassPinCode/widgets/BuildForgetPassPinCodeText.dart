part of 'PinCodeWidgetsImports.dart';

class BuildForgetPassPinCodeText extends StatelessWidget {
  const BuildForgetPassPinCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.r,bottom: 15.r),
      child: Column(
        children: [
          Custom_Text(
            text: 'verify \n your password',
            size: 25.sp,
            align: TextAlign.center,
            fontWeight: FontWeight.bold,
            color_text: AppColors.black,
          ),
          SizedBox(
            height: 15.h,
          ),
          Custom_Text(
            text: 'Enter your OTP code here',
            size: 18.sp,
            color_text: AppColors.black,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
