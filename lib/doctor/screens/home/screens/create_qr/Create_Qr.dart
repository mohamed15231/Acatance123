part of 'Create_Qr_Imports.dart';

class CreateQR extends StatefulWidget {
  CreateQR({Key? key}) : super(key: key);

  @override
  State<CreateQR> createState() => _CreateQRState();
}

class _CreateQRState extends State<CreateQR> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formatter = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(now);
    return Scaffold(
      appBar: DefaultAppBar(),
      body: BlocConsumer<Doctor_Cubit, Doctor_State>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = Doctor_Cubit.get(context);
          return ConditionalBuilderRec(
            condition: cubit.get_subject_model?.subjects != null,
            builder: (context) => SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 35.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Choose_Duration(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Choose_Week_Number(),
                    SizedBox(
                      height: 60.h,
                    ),
                    CustomTextCreateQrScreen(
                      text: 'Choose subject',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(child: Listview_Get_Subject()),
                    SizedBox(
                      height: 60.h,
                    ),
                    Button_Create_Qr(
                      formatter: formatter,
                    )
                  ],
                ),
              ),
            ),
            fallback: (context) => Animation_loader(),
          );
        },
      ),
    );
  }
}
