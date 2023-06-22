part of 'DoctorMainImports.dart';

class DoctorMain extends StatelessWidget {
   DoctorMain({Key? key}) : super(key: key);

  DoctorMainScreenData doctorMainData = DoctorMainScreenData();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit, Doctor_State>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var cubit = Doctor_Cubit.get(context);
        return ConditionalBuilderRec(
          condition: cubit.news_model != null,
          builder: (context) {
            return ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0.r),
                  child: Column(
                    children: [
                      BuildUniversityTeams(),
                      BuildDepartmentNews(),
                      BuildMostPopular()
                    ],
                  ),
                ),
              ],
            );
          },
          fallback: (context) => Animation_loader(),
        );
      },
    );
  }
}
