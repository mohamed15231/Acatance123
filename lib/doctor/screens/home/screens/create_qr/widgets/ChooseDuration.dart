part of 'WidgetImports.dart';

class Choose_Duration extends StatelessWidget {
  const Choose_Duration({Key? key}) : super(key: key);

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
              text: 'Choose Duration',
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container_Choice(
                  onTap: cubit.onTap_TenMin,
                  text: '10 Min',
                  containerColor: cubit.stateDuration == ChooseDuration.tenMin
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor: cubit.stateDuration != ChooseDuration.tenMin
                      ? AppColors.white
                      : AppColors.secondary,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container_Choice(
                  onTap: cubit.onTap_TwentyMin,
                  text: '20 Min',
                  containerColor: cubit.stateDuration == ChooseDuration.TwentyMin
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor: cubit.stateDuration != ChooseDuration.TwentyMin
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
                  onTap: cubit.onTap_ThirtyMin,
                  text: '30 Min',
                  containerColor: cubit.stateDuration == ChooseDuration.thirtyMin
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor: cubit.stateDuration != ChooseDuration.thirtyMin
                      ? AppColors.white
                      : AppColors.secondary,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container_Choice(
                  onTap: cubit.onTap_FortyMin,
                  text: '40 Min',
                  containerColor: cubit.stateDuration == ChooseDuration.fortyMin
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor: cubit.stateDuration != ChooseDuration.fortyMin
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
                  onTap: cubit.onTap_FiftyMin,
                  text: '50 Min',
                  containerColor: cubit.stateDuration == ChooseDuration.fiftyMin
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor: cubit.stateDuration != ChooseDuration.fiftyMin
                      ? AppColors.white
                      : AppColors.secondary,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container_Choice(
                  onTap: cubit.onTap_SixtyMin,
                  text: '60 Min',
                  containerColor: cubit.stateDuration == ChooseDuration.sixtyMin
                      ? AppColors.white
                      : AppColors.secondary,
                  textColor: cubit.stateDuration != ChooseDuration.sixtyMin
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
                Center(
                  child: Container_Choice(
                    onTap: cubit.onTap_SevenMin,
                    containerColor: cubit.stateDuration == ChooseDuration.seventyMin
                        ? AppColors.white
                        : AppColors.secondary,
                    textColor: cubit.stateDuration != ChooseDuration.seventyMin
                        ? AppColors.white
                        : AppColors.secondary,
                    text: "70 Min",
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),

                Center(
                  child: Container_Choice(
                    onTap: cubit.onTap_EightyMin,
                    containerColor: cubit.stateDuration == ChooseDuration.eightyMin
                        ? AppColors.white
                        : AppColors.secondary,
                    textColor: cubit.stateDuration != ChooseDuration.eightyMin
                        ? AppColors.white
                        : AppColors.secondary,
                    text: "80 Min",
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
