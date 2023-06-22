part of 'Make_Quiz_Imports.dart';

class Make_Quiz_Screen extends StatelessWidget {
  Make_Quiz_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String startTime = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(now);
    return Scaffold(
      appBar: DefaultAppBar(),
      body: BlocConsumer<Doctor_Cubit, Doctor_State>(
        builder: (BuildContext context, Doctor_State state) {
          var cubit = Doctor_Cubit.get(context);
          return ConditionalBuilderRec(
            condition: cubit.get_subject_model?.subjects == null,
            builder: (context) => Animation_loader(),
            fallback: (context) => SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(

                padding: EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 35.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChooseDepartment(),
                    SizedBox(
                      height: 50.h,
                    ),
                    CustomTextCreateQrScreen(
                      text: 'Choose subject',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Listview_Get_Subject(),
                    SizedBox(
                      height: 50.h,
                    ),
                    Custom_Text_Button(
                      alignment: AlignmentDirectional.center,
                      onPressed: () {
                        Make_Quiz_Data.showDateTimePicker(context: context)
                            .then((value) {
                          startTime = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                              .format(value!);
                          print(startTime);
                        });
                      },
                      text: 'Pick Date-Time',
                      textColor: Colors.grey,
                      decorationText: TextDecoration.underline,
                      size: 30.0.r,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                      child: DefaultButton(
                        onPressed: () {
                          cubit.getRanges(
                              doctorId: idValue,
                              deptId: CreateQrData.IdDepartment(
                                  chooseDepartment: cubit.stateDepartment));
                          Navigate_Push.navigate(
                            context: context,
                            page: Create_Quiz_Screen(
                              DeptId: CreateQrData.IdDepartment(
                                chooseDepartment: cubit.stateDepartment,
                              ),
                              DoctorId: idValue,
                              Duration: 90,
                              StartTime: startTime,
                              SubjectId: cubit.subject_Id!,
                            ),
                          );
                        },
                        text: 'Next',
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
