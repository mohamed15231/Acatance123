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
              onTap: ()=>selectUserData.onSelectDoctor(context),
              title: 'Professor',
              textSize: 18.sp,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width/14,
          ),
          Expanded(
            child: DefaultButton(
              onTap: ()=>selectUserData.onSelectStudent(context),
              title: 'Student',
              color: AppColors.white,
              textColor: AppColors.primary,
              textSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
