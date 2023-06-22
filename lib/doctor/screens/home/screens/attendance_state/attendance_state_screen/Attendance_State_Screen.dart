import 'package:acatance/doctor/cubit/DoctorCubit.dart';
import 'package:acatance/doctor/cubit/DoctorState.dart';
import 'package:acatance/doctor/screens/home/screens/create_qr/Create_Qr_Imports.dart';
import 'package:acatance/general/Screens/widgets/AppColors.dart';
import 'package:acatance/general/Screens/widgets/Widgets_Imports.dart';
import 'package:conditional_builder_rec/conditional_builder_rec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../general/constants/ConstantValues.dart';
import 'Show_States_Screen.dart';

class Attendance_State_Screen extends StatelessWidget {
  const Attendance_State_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: BlocConsumer<Doctor_Cubit, Doctor_State>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = Doctor_Cubit.get(context);
          return ConditionalBuilderRec(
            condition: cubit.getLectureModel?.getData == null ||
                state is LoaderGetLectureApi,
            builder: (BuildContext context) => Animation_loader(),
            fallback: (context) => cubit.getLectureModel!.getData.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: ListView.separated(
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          cubit.getLectureStates(
                              lecId: cubit.getLectureModel!.getData[index].id!);
                          Navigate_Push.navigate(
                              context: context, page: Show_States_Screen());
                        },
                        child: Container(
                          width: double.infinity,
                          height: 100.h,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 100,
                                  offset: Offset(0, 10)),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Custom_Text(
                                text: "Lecture",
                                align: TextAlign.center,
                                size: 25.r,
                              ),
                              Custom_Text(
                                text:
                                    " ${cubit.getLectureModel!.getData[index].lecNumber}",
                                size: 25.r,
                              ),
                            ],
                          ),
                        ),
                      ),
                      itemCount: cubit.getLectureModel!.getData.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: 30.h,
                      ),
                    ),
                  )
                : Center(
                    child: DefaultButton(
                    text: "Go to create lecture",
                    width: 250.w,
                    height: 90.h,
                    textSize: 25.r,
                    onPressed: () {
                      cubit.getSubject(
                          doctorId: idValue);
                      Navigate_Push.navigate(context: context, page:CreateQR() );
                      Navigator_And_Replace.navigate(
                        context: context,
                        page: CreateQR(),

                      );
                    },
                  )),
          );
        },
      ),
    );
  }
}
