part of 'WidgetImports.dart';
class Listview_Get_Subject extends StatefulWidget {
   Listview_Get_Subject({Key? key}) : super(key: key);

  @override
  State<Listview_Get_Subject> createState() => _Listview_Get_SubjectState();

}

class _Listview_Get_SubjectState extends State<Listview_Get_Subject> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit,Doctor_State>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit=Doctor_Cubit.get(context);
        return ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              SizedBox(
                height: 20.h,
              ),
          itemBuilder: (context, index) {
            final pressAttention = cubit
                .pressedAttentions[index];
            return Container_Choice(
              containerColor: pressAttention ? AppColors.white
                  : AppColors.secondary,
              textColor: pressAttention
                  ? AppColors.secondary
                  : AppColors.white,
              onTap: () {
                setState(() {
                  cubit.subject_Id =
                  cubit.get_subject_model!.subjects![index]
                      .id!;
                  cubit.pressedAttentions =
                      cubit.get_subject_model!.subjects!.map((
                          e) => false).toList();
                  cubit.pressedAttentions[index] !=
                      !pressAttention ?
                  cubit.pressedAttentions[index] =
                  !pressAttention : cubit
                      .pressedAttentions[index] =
                      pressAttention;
                  print(cubit.subject_Id);
                });
              },
              text: cubit
                  .get_subject_model!.subjects![index]
                  .subjectName!,
            );
          },
          itemCount: cubit.get_subject_model!.subjects!
              .length,
        );
      },
    );
  }
}
