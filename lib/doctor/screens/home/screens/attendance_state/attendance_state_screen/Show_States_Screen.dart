import 'package:acatance/doctor/cubit/DoctorCubit.dart';
import 'package:acatance/doctor/cubit/DoctorState.dart';
import 'package:acatance/general/Screens/widgets/Widgets_Imports.dart';
import 'package:acatance/res.dart';
import 'package:conditional_builder_rec/conditional_builder_rec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../general/Screens/widgets/AppColors.dart';
import '../widget/Custom_Text_States_Screen.dart';

class Show_States_Screen extends StatelessWidget {
  const Show_States_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit, Doctor_State>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = Doctor_Cubit.get(context);
          return Scaffold(
              appBar: DefaultAppBar(
                onTap: () {
                  Navigator.of(context).pop();
                  cubit.lectureStatesModel!.getData = null;
                },
              ),
              body: ConditionalBuilderRec(
                condition: state is! GetLectureLoadingStatesApi &&
                    cubit.lectureStatesModel?.getData != null,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Custom_Text(
                            text: "Total number of attendees : ",
                            align: TextAlign.center,
                            color_text: Colors.black,
                            fontWeight: FontWeight.w600,
                            size: 20.r,
                          ),
                          Custom_Text(
                            text: "${cubit.lectureStatesModel!.getData!.length}",
                            align: TextAlign.center,
                            color_text: Colors.green,
                            fontWeight: FontWeight.w900,
                            size: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Expanded(
                        child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: double.infinity,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 400,
                                        offset: Offset(0, 10)),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomTextStateScreen(
                                        leftText: "Student Name: ",
                                        RightText: cubit.lectureStatesModel!
                                            .getData![index].studentName!,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      CustomTextStateScreen(
                                        leftText: "Universe Id:",
                                        RightText: cubit.lectureStatesModel!
                                            .getData![index].universityId!,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      CustomTextStateScreen(
                                        leftText: "lecture Number:",
                                        RightText: cubit.lectureStatesModel!
                                            .getData![index].lecNumber!,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      CustomTextStateScreen(
                                          leftText: 'major:',
                                          RightText: cubit.lectureStatesModel!
                                              .getData![index].major!),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: cubit.lectureStatesModel!.getData!.length,
                          separatorBuilder: (BuildContext context, int index) =>
                              SizedBox(
                            height: 10.h,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                fallback: (context) => Animation_loader(),
              ));
        });
  }
}
