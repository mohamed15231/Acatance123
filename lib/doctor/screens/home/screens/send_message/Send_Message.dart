part of 'Send_Message_Imports.dart';
class Send_Message extends StatelessWidget {
  const Send_Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit,Doctor_State>(
      listener: (context, state) {

      },
      builder: (BuildContext context, state) {
        var cubit=Doctor_Cubit.get(context);
        return Scaffold(
          appBar: DefaultAppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 35.0.h),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children:[
                  ChooseDepartment(),
                  SizedBox(
                    height: 60.h,
                  ),
                  Center(
                    child: DefaultButton(
                        text: "Next",
                        onPressed: () {
                          cubit.getRanges(doctorId: idValue, deptId: CreateQrData.IdDepartment(chooseDepartment: cubit.stateDepartment));

                          Navigate_Push.navigate(context: context, page: Send_Message_Ranks());

                        }),
                  )
                ]

              ),
            ),
          ),
        );
      },
    );
  }
}
