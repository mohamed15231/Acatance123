part of 'Attendance_State_Imports.dart';

class AttendanceState extends StatefulWidget {
  const AttendanceState({Key? key}) : super(key: key);

  @override
  State<AttendanceState> createState() => _AttendanceStateState();

}

class _AttendanceStateState extends State<AttendanceState> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit,Doctor_State>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit=Doctor_Cubit.get(context);
        return Scaffold(
          appBar: DefaultAppBar(),
          body: ConditionalBuilderRec(
            condition: cubit.get_subject_model?.subjects != null,
            builder: (BuildContext context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Listview_Get_Subject(),
                  SizedBox(height: 25.h,),
                  DefaultButton(text: "Next", onPressed: (){
                    cubit.getLectures(doctorId: idValue, subjectId: cubit.subject_Id!);
                    Navigate_Push.navigate(context: context, page: Attendance_State_Screen());


                  })
                ],
              );
            },
            fallback: (context) => Animation_loader(),
            
          ),
        );
      }
    );
  }
}
