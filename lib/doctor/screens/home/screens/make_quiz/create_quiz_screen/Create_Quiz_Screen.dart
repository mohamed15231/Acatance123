
part of 'Create_Quiz_Imports.dart';
class Create_Quiz_Screen extends StatelessWidget {
   Create_Quiz_Screen({Key? key, required this.StartTime, required this.DeptId, required this.SubjectId,  required this.DoctorId, required this.Duration}) : super(key: key);
  var degree=TextEditingController();
  var name=TextEditingController();
   final String StartTime;
   final String DeptId;
   final String SubjectId;
   final String DoctorId;
   final int Duration;



   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: DefaultAppBar(),
      body: BlocConsumer<Doctor_Cubit,Doctor_State>(
        listener: (context, state) {

        },
        builder: (context,state) {
          var cubit=Doctor_Cubit.get(context);
          return ConditionalBuilderRec(
            condition: cubit.get_ranks_model?.subjects==null,
            builder: (BuildContext context) =>Animation_loader(),
            fallback: (context) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    ListviewRanks(),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomInputFormField(
                      labeltxt: "Enter degree",
                      controller: degree,
                      validator: (value){
                        if(value!.isEmpty){
                          return "degree mustn't empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomInputFormField(
                      labeltxt: "Enter quiz name",
                      controller: name,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Name mustn't empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    DefaultButton(text: "Create Quiz", onPressed: (){
                      print("rank id:${cubit.rank_Id!}");
                      print("Start time:${StartTime}");
                      print("Department :${DeptId}");
                      print("subject id :${SubjectId}");
                      print("doctor id :${DoctorId}");
                      print("degree :${degree.text}");
                      print("name:${name.text}");
                      print("duration:${Duration}");
                      cubit.make_Quiz(StartTime: "2023-06-19T00:11:29.422Z", DeptId: DeptId, SubjectId: SubjectId, RankId: cubit.rank_Id!, DoctorId: DoctorId, Degree: int.parse(degree.text), ExamName: name.text, Duration: Duration);
                    })

                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
