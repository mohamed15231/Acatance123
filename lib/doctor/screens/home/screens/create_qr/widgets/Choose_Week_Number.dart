part of 'WidgetImports.dart';

class Choose_Week_Number extends StatelessWidget {
  const Choose_Week_Number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit, Doctor_State>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = Doctor_Cubit.get(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextCreateQrScreen(
              text: 'Choose week number',
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container_Choice(
                  onTap: cubit.onTap_FirstWeek,
                  text: '1st',
                  containerColor:
                      cubit.stateWeekNum == ChooseWeekNumberEnum.First
                          ? AppColors.white
                          : AppColors.secondary,
                  textColor:  cubit.stateWeekNum != ChooseWeekNumberEnum.First
                      ? AppColors.white
                      : AppColors.secondary,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container_Choice(
                  onTap: cubit.onTap_SecondWeek,
                  text: '2nd',
                  containerColor:  cubit.stateWeekNum == ChooseWeekNumberEnum.Second
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor:  cubit.stateWeekNum != ChooseWeekNumberEnum.Second
                      ? AppColors.white
                      : AppColors.secondary,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container_Choice(
                  onTap: cubit.onTap_ThirdWeek,
                  text: '3rd',
                  containerColor:   cubit.stateWeekNum == ChooseWeekNumberEnum.Third
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor:   cubit.stateWeekNum != ChooseWeekNumberEnum.Third
                      ? AppColors.white
                      : AppColors.secondary,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container_Choice(
                  onTap: cubit.onTap_FourthWeek,
                  text: '4th',
                  containerColor:   cubit.stateWeekNum == ChooseWeekNumberEnum.Fourth
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor:   cubit.stateWeekNum != ChooseWeekNumberEnum.Fourth
                      ? AppColors.white
                      : AppColors.secondary,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container_Choice(
                  onTap: cubit.onTap_FifthWeek,
                  text: '5th',
                  containerColor:   cubit.stateWeekNum == ChooseWeekNumberEnum.Fifth
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor:   cubit.stateWeekNum != ChooseWeekNumberEnum.Fifth
                      ? AppColors.white
                      : AppColors.secondary,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container_Choice(
                  onTap: cubit.onTap_SixthWeek,
                  text: '6th',
                  containerColor:   cubit.stateWeekNum == ChooseWeekNumberEnum.Sixth
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor:   cubit.stateWeekNum != ChooseWeekNumberEnum.Sixth
                      ? AppColors.white
                      : AppColors.secondary,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container_Choice(
                onTap: cubit.onTap_SeventhWeek,
                containerColor:   cubit.stateWeekNum == ChooseWeekNumberEnum.Seventh
                    ? AppColors.white
                    : AppColors.secondary,
                textColor:   cubit.stateWeekNum != ChooseWeekNumberEnum.Seventh
                    ? AppColors.white
                    : AppColors.secondary,
                text: "7th",
              ),
            ),
          ],
        );
      },
    );
  }
}
