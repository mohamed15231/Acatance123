part of 'WidgetImports.dart';


class ChooseDepartment extends StatelessWidget {
  const ChooseDepartment({Key? key}) : super(key: key);

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
              text: 'Choose department',
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container_Choice(
                  onTap: cubit.onTap_It,
                  containerColor:
                      cubit.stateDepartment == ChooseDepartmentEnum.IT
                          ? AppColors.white
                          : AppColors.secondary,
                  textColor: cubit.stateDepartment == ChooseDepartmentEnum.IT
                      ? AppColors.secondary
                      : AppColors.white,
                  text: "IT",
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container_Choice(
                  onTap: cubit.onTap_Is,
                  containerColor:
                      cubit.stateDepartment == ChooseDepartmentEnum.Is
                          ? AppColors.white
                          : AppColors.secondary,
                  textColor: cubit.stateDepartment == ChooseDepartmentEnum.Is
                      ? AppColors.secondary
                      : AppColors.white,
                  text: "IS",
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container_Choice(
                onTap: cubit.onTap_Cs,
                containerColor: cubit.stateDepartment == ChooseDepartmentEnum.Cs
                    ? AppColors.white
                    : AppColors.secondary,
                textColor: cubit.stateDepartment == ChooseDepartmentEnum.Cs
                    ? AppColors.secondary
                    : AppColors.white,
                text: "CS",
              ),
            ),
          ],
        );
      },
    );
  }
}
