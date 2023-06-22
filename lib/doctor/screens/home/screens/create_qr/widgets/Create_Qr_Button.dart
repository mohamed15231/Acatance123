part of 'WidgetImports.dart';
class Button_Create_Qr extends StatelessWidget {
  const Button_Create_Qr ({Key? key, required this.formatter}) : super(key: key);
  final String formatter;
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<Doctor_Cubit,Doctor_State>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit =Doctor_Cubit.get(context);
       return Center(

         child: DefaultButton(

             text: "Create QR", onPressed: () {
           cubit.getQr(
             lecNumber: CreateQrData.weekNumber(chooseWeekNumberEnum: Doctor_Cubit.get(context).stateWeekNum),
             subjectId: cubit.subject_Id!,
             startTime: formatter,
             doctorId: idValue,
             qr_Duration: CreateQrData.duration(chooseDuration:Doctor_Cubit.get(context).stateDuration ),
           ).then((value) {
             cubit.moveToScanScreen(2);
             Navigator_And_Replace.navigate(context: context, page: Doctor_Home());
           });
         }),
       );
      },

    );
  }
}
