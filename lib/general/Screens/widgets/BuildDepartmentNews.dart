part of 'Widgets_Imports.dart';

class BuildDepartmentNews extends StatelessWidget {
  BuildDepartmentNews({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit,Doctor_State>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var cubit=Doctor_Cubit.get(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custom_Text(
              text: 'Department News',
              color_text: AppColors.black,
              size: 20.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10.sp,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0.r),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(cubit.departmentDescriptionModels!.departments!.length, (index) => Container(
                    width: 250.w,
                    // height: cubit.isMore![index]?null:330.h,
                    padding: EdgeInsets.only(left: 5.r),
                    child: Card(
                      elevation: 10,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.r),),
                      ),
                      color: AppColors.white,
                      child: Padding(
                        padding: EdgeInsets.all(15.0.r),
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Custom_Text(
                                text: "${cubit.departmentDescriptionModels!.departments![index].departmentName!} Department",
                                size: 20.sp,
                                fontWeight: FontWeight.w500,
                                color_text: AppColors.secondary,
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Custom_Text(
                              text: cubit.departmentDescriptionModels!.departments![index].description!,
                              maxLine: cubit.isMore![index]? null: 9,
                              textOverflow:cubit.isMore![index]? null:TextOverflow.ellipsis,
                              size: 18.sp,
                              color_text: AppColors.secondary,
                            ),
                            Custom_Text_Button(onPressed: (){
                              cubit.onTapMore(index);
                              print(cubit.isMore![index]);
                            }, text:cubit.isMore![index]? "less":"More", textColor: AppColors.black)
                          ],
                        ),
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
