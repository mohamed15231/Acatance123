part of 'LoginWidgetsImports.dart';

class BuildLoginText extends StatelessWidget {
  const BuildLoginText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var type = GlobalState.instance.get('type');
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(vertical: 20.r),
      child: CustomText(
        align: TextAlign.start,
        title: type==0?'Login as student':'Login as professor',
        size: 25.sp,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
