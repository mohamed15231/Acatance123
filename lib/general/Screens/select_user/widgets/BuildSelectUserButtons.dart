part of 'SelectUserWidgetsImports.dart';

class BuildSelectUserButtons extends StatelessWidget {
  final SelectUserData selectUserData;

  const BuildSelectUserButtons({Key? key, required this.selectUserData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.r,vertical: 20.r),
      child: Row(
        children: [
          Expanded(
            child: DefaultButton(
              onPressed: ()=>selectUserData.onSelectDoctor(context),
              text: 'Professor',
              textSize: 18.sp,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width/14,
          ),
          Expanded(
            child: DefaultButton(
              onPressed: ()=>selectUserData.onSelectStudent(context),
              text: 'Student',
              buttonColor: AppColors.white,
              TextColor: AppColors.primary,
              textSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
