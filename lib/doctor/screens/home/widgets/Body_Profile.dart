part  of 'WidgetsImports.dart';

class Body_Screen extends StatelessWidget {
  const Body_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<Doctor_Cubit,Doctor_State>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit=Doctor_Cubit.get(context);
        return Column(
          children: [
            Row(
              children: [
                Container_Profile_Screen(
                  text:"Make quiz" ,
                  onPressed: (){
                    cubit.getSubject(
                        doctorId: idValue);
                    Navigate_Push.navigate(context: context, page: Make_Quiz_Screen());
                  },
                  containerColor:AppColors.steelBlue ,
                ),
                SizedBox(
                  width: 20.0.w,
                ),
                Container_Profile_Screen(
                  text:"results" ,
                  onPressed: (){},
                  containerColor:AppColors.darkCerulean ,
                ),
              ],
            ),
            SizedBox(height: 24.h,),
            Row(
              children: [
                Container_Profile_Screen(
                  text:"Student \n state" ,
                  onPressed: (){},
                  containerColor: AppColors.darkCerulean ,
                ),
                SizedBox(
                  width: 20.0.w,
                ),
                Container_Profile_Screen(
                  text:"Attendance \n state" ,
                  onPressed: (){
                    cubit.getSubject(doctorId:  idValue);
                    Navigate_Push.navigate(context: context, page: AttendanceState());
                  },
                  containerColor:AppColors.steelBlue ,
                ),
              ],
            ),
            SizedBox(height: 24.h,),

            Row(
              children: [
                Container_Profile_Screen(
                  text:"Create \n QR" ,
                  onPressed: (){
                    cubit.getSubject(
                        doctorId: idValue);
                    Navigate_Push.navigate(context: context, page:CreateQR() );

                  },
                  containerColor:AppColors.steelBlue ,
                ),
                SizedBox(
                  width: 20.0.w,
                ),
                Container_Profile_Screen(
                  text:"Send \n Message" ,
                  onPressed: (){
                    Navigate_Push.navigate(context: context, page: Send_Message());
                  },
                  containerColor: AppColors.darkCerulean ,
                ),
              ],
            ),
          ],
        );
      }
    );
  }
}
